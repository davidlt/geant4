// -*- C++ -*-
// CLASSDOC OFF
// ---------------------------------------------------------------------------
// CLASSDOC ON
//
// This file is a part of the CLHEP - a Class Library for High Energy Physics.
//
// This is the definition of the HepRotationY class for performing rotations
// around the X axis on objects of the Hep3Vector (and HepLorentzVector) class.
//
// HepRotationY is a concrete implementation of Hep3RotationInterface.
//
// .SS See Also
// RotationInterfaces.h
// ThreeVector.h, LorentzVector.h, LorentzRotation.h
//
// .SS Author
// Mark Fischler

#ifndef HEP_ROTATIONY_H
#define HEP_ROTATIONY_H

#ifdef GNUPRAGMA
#pragma interface
#endif

#include "CLHEP/Vector/RotationInterfaces.h"

namespace CLHEP {

class HepRotationY;
class HepRotation;
class HepBoost;

inline HepRotationY inverseOf(const HepRotationY & r);
// Returns the inverse of a RotationY.

/**
 * @author
 * @ingroup vector
 */
class HepRotationY {

public:

  // ----------  Constructors and Assignment:

  inline HepRotationY();
  // Default constructor. Gives an identity rotation. 

  HepRotationY(double delta);
  // supply angle of rotation 

  inline HepRotationY(const HepRotationY & orig);
  // Copy constructor.

  inline HepRotationY & operator = (const HepRotationY & r);
  // Assignment from a Rotation, which must be RotationY

  HepRotationY & set ( double delta );
  // set angle of rotation 

  inline ~HepRotationY();
  // Trivial destructor.

  // ----------  Accessors:

  inline Hep3Vector colX() const;
  inline Hep3Vector colY() const;
  inline Hep3Vector colZ() const;
  // orthogonal unit-length column vectors

  inline Hep3Vector rowX() const;
  inline Hep3Vector rowY() const;
  inline Hep3Vector rowZ() const;
  // orthogonal unit-length row vectors
                                
  inline double xx() const;
  inline double xy() const;
  inline double xz() const;
  inline double yx() const;
  inline double yy() const;
  inline double yz() const;
  inline double zx() const;
  inline double zy() const;
  inline double zz() const;
  // Elements of the rotation matrix (Geant4).

  inline HepRep3x3 rep3x3() const;
  //   3x3 representation:

  // ------------  Euler angles:
  inline  double getPhi  () const;
  inline  double getTheta() const;
  inline  double getPsi  () const;
  double    phi  () const;
  double    theta() const;
  double    psi  () const;
  HepEulerAngles eulerAngles() const;

  // ------------  axis & angle of rotation:
  inline  double  getDelta() const;
  inline  Hep3Vector getAxis () const;
  inline  double     delta() const;
  inline  Hep3Vector    axis () const;
  inline  HepAxisAngle  axisAngle() const;
  inline  void getAngleAxis(double & delta, Hep3Vector & axis) const;
  // Returns the rotation angle and rotation axis (Geant4). 	

  // ------------- Angles of rotated axes
  double phiX() const;
  double phiY() const;
  double phiZ() const;
  double thetaX() const;
  double thetaY() const;
  double thetaZ() const;
  // Return angles (RADS) made by rotated axes against original axes (Geant4).

  // ----------  Other accessors treating pure rotation as a 4-rotation

  inline HepLorentzVector col1() const;
  inline HepLorentzVector col2() const;
  inline HepLorentzVector col3() const;
  //  orthosymplectic 4-vector columns - T component will be zero

  inline HepLorentzVector col4() const;
  // Will be (0,0,0,1) for this pure Rotation.

  inline HepLorentzVector row1() const;
  inline HepLorentzVector row2() const;
  inline HepLorentzVector row3() const;
  //  orthosymplectic 4-vector rows - T component will be zero

  inline HepLorentzVector row4() const;
  // Will be (0,0,0,1) for this pure Rotation.

  inline double xt() const;
  inline double yt() const;
  inline double zt() const;
  inline double tx() const;
  inline double ty() const;
  inline double tz() const;
  // Will be zero for this pure Rotation

  inline double tt() const;
  // Will be one for this pure Rotation

  inline HepRep4x4 rep4x4() const;
  //   4x4 representation.

  // ---------   Mutators 

  void setDelta (double delta);
  // change angle of rotation, leaving rotation axis unchanged.

  // ----------  Decomposition:

  void decompose (HepAxisAngle & rotation, Hep3Vector & boost) const;
  void decompose (Hep3Vector & boost, HepAxisAngle & rotation) const;
  void decompose (HepRotation & rotation, HepBoost & boost) const;
  void decompose (HepBoost & boost, HepRotation & rotation) const;
   // These are trivial, as the boost vector is 0.		

  // ----------  Comparisons: 
  
  inline bool isIdentity() const;				
  // Returns true if the identity matrix (Geant4).	

  inline int compare( const HepRotationY & r  ) const;
  // Dictionary-order comparison, in order of delta
  // Used in operator<, >, <=, >=

  inline bool operator== ( const HepRotationY & r ) const;
  inline bool operator!= ( const HepRotationY & r ) const;
  inline bool operator<  ( const HepRotationY & r ) const;
  inline bool operator>  ( const HepRotationY & r ) const;
  inline bool operator<= ( const HepRotationY & r ) const;
  inline bool operator>= ( const HepRotationY & r ) const;

  double distance2( const HepRotationY & r  ) const; 
  // 3 - Tr ( this/r )

  double distance2( const HepRotation &  r  ) const;
  // 3 - Tr ( this/r ) -- This works with RotationY or Z also

  double howNear( const HepRotationY & r ) const;
  double howNear( const HepRotation  & r ) const;
  bool isNear( const HepRotationY & r,
             double epsilon=Hep4RotationInterface::tolerance) const;
  bool isNear( const HepRotation  & r,
             double epsilon=Hep4RotationInterface::tolerance) const;
                                     
  double distance2( const HepBoost           & lt  ) const;
  // 3 - Tr ( this ) + |b|^2 / (1-|b|^2)
  double distance2( const HepLorentzRotation & lt  ) const;
  // 3 - Tr ( this/r ) + |b|^2 / (1-|b|^2) where b is the boost vector of lt

  double howNear( const HepBoost           & lt ) const;
  double howNear( const HepLorentzRotation & lt ) const;
  bool isNear( const HepBoost           & lt,
             double epsilon=Hep4RotationInterface::tolerance) const;
  bool isNear( const HepLorentzRotation & lt,
             double epsilon=Hep4RotationInterface::tolerance) const;

  // ----------  Properties:

  double norm2() const; 
  // distance2 (IDENTITY), which is 3 - Tr ( *this )

  inline void rectify();
  // non-const but logically moot correction for accumulated roundoff errors

  // ---------- Application:

  inline Hep3Vector operator() (const Hep3Vector & p) const;
  // Rotate a Hep3Vector.					

  inline  Hep3Vector operator * (const Hep3Vector & p) const;
  // Multiplication with a Hep3Vector.

  inline HepLorentzVector operator()( const HepLorentzVector & w ) const;
  // Rotate (the space part of) a HepLorentzVector.		

  inline  HepLorentzVector operator* ( const HepLorentzVector & w ) const;
  // Multiplication with a HepLorentzVector.

  // ---------- Operations in the group of Rotations

  inline HepRotationY operator * (const HepRotationY & ry) const;
  // Product of two Y rotations (this) * ry is known to be RotationY.

  inline  HepRotationY & operator *= (const HepRotationY & r);
  inline  HepRotationY & transform   (const HepRotationY & r);
  // Matrix multiplication.
  // Note a *= b; <=> a = a * b; while a.transform(b); <=> a = b * a;
  // However, in this special case, they commute:  Both just add deltas.

  inline HepRotationY inverse() const;
  // Returns the inverse.

  friend HepRotationY inverseOf(const HepRotationY & r);
  // Returns the inverse of a RotationY.

  inline HepRotationY & invert();
  // Inverts the Rotation matrix (be negating delta).

  // ---------- I/O: 

  std::ostream & print( std::ostream & os ) const;
  // Output, identifying type of rotation and delta.

  // ---------- Tolerance

  static inline double getTolerance();
  static inline double setTolerance(double tol);

protected:

  double its_d;
  // The angle of rotation.

  double its_s;
  double its_c;
  // Cache the trig functions, for rapid operations.

  inline HepRotationY ( double dd, double ss, double cc );
  // Unchecked load-the-data-members

  static inline double proper (double delta);
  // Put an angle into the range of (-PI, PI].  Useful helper method.

};  // HepRotationY

// ---------- Free-function operations in the group of Rotations

inline   
std::ostream & operator << 
	( std::ostream & os, const HepRotationY & r ) {return r.print(os);}

}  // namespace CLHEP

#include "CLHEP/Vector/RotationY.icc"

#endif /* HEP_ROTATIONY_H */

