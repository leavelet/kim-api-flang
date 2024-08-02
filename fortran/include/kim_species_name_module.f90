!
! KIM-API: An API for interatomic models
! Copyright (c) 2013--2022, Regents of the University of Minnesota.
! All rights reserved.
!
! Contributors:
!    Ryan S. Elliott
!
! SPDX-License-Identifier: LGPL-2.1-or-later
!
! This library is free software; you can redistribute it and/or
! modify it under the terms of the GNU Lesser General Public
! License as published by the Free Software Foundation; either
! version 2.1 of the License, or (at your option) any later version.
!
! This library is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
! Lesser General Public License for more details.
!
! You should have received a copy of the GNU Lesser General Public License
! along with this library; if not, write to the Free Software Foundation,
! Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
!

!
! Release: This file is part of the kim-api-2.3.0 package.
!

!> \brief \copybrief KIM::SpeciesName
!!
!! \sa KIM::SpeciesName, KIM_SpeciesName
!!
!! \since 2.0
module kim_species_name_module
  use, intrinsic :: iso_c_binding
  implicit none
  private

  public &
    ! Derived types
  kim_species_name_type, &
  ! Constants
    KIM_SPECIES_NAME_ELECTRON, &
    KIM_SPECIES_NAME_H, &
    KIM_SPECIES_NAME_HE, &
    KIM_SPECIES_NAME_LI, &
    KIM_SPECIES_NAME_BE, &
    KIM_SPECIES_NAME_B, &
    KIM_SPECIES_NAME_C, &
    KIM_SPECIES_NAME_N, &
    KIM_SPECIES_NAME_O, &
    KIM_SPECIES_NAME_F, &
    KIM_SPECIES_NAME_NE, &
    KIM_SPECIES_NAME_NA, &
    KIM_SPECIES_NAME_MG, &
    KIM_SPECIES_NAME_AL, &
    KIM_SPECIES_NAME_SI, &
    KIM_SPECIES_NAME_P, &
    KIM_SPECIES_NAME_S, &
    KIM_SPECIES_NAME_CL, &
    KIM_SPECIES_NAME_AR, &
    KIM_SPECIES_NAME_K, &
    KIM_SPECIES_NAME_CA, &
    KIM_SPECIES_NAME_SC, &
    KIM_SPECIES_NAME_TI, &
    KIM_SPECIES_NAME_V, &
    KIM_SPECIES_NAME_CR, &
    KIM_SPECIES_NAME_MN, &
    KIM_SPECIES_NAME_FE, &
    KIM_SPECIES_NAME_CO, &
    KIM_SPECIES_NAME_NI, &
    KIM_SPECIES_NAME_CU, &
    KIM_SPECIES_NAME_ZN, &
    KIM_SPECIES_NAME_GA, &
    KIM_SPECIES_NAME_GE, &
    KIM_SPECIES_NAME_AS, &
    KIM_SPECIES_NAME_SE, &
    KIM_SPECIES_NAME_BR, &
    KIM_SPECIES_NAME_KR, &
    KIM_SPECIES_NAME_RB, &
    KIM_SPECIES_NAME_SR, &
    KIM_SPECIES_NAME_Y, &
    KIM_SPECIES_NAME_ZR, &
    KIM_SPECIES_NAME_NB, &
    KIM_SPECIES_NAME_MO, &
    KIM_SPECIES_NAME_TC, &
    KIM_SPECIES_NAME_RU, &
    KIM_SPECIES_NAME_RH, &
    KIM_SPECIES_NAME_PD, &
    KIM_SPECIES_NAME_AG, &
    KIM_SPECIES_NAME_CD, &
    KIM_SPECIES_NAME_IN, &
    KIM_SPECIES_NAME_SN, &
    KIM_SPECIES_NAME_SB, &
    KIM_SPECIES_NAME_TE, &
    KIM_SPECIES_NAME_I, &
    KIM_SPECIES_NAME_XE, &
    KIM_SPECIES_NAME_CS, &
    KIM_SPECIES_NAME_BA, &
    KIM_SPECIES_NAME_LA, &
    KIM_SPECIES_NAME_CE, &
    KIM_SPECIES_NAME_PR, &
    KIM_SPECIES_NAME_ND, &
    KIM_SPECIES_NAME_PM, &
    KIM_SPECIES_NAME_SM, &
    KIM_SPECIES_NAME_EU, &
    KIM_SPECIES_NAME_GD, &
    KIM_SPECIES_NAME_TB, &
    KIM_SPECIES_NAME_DY, &
    KIM_SPECIES_NAME_HO, &
    KIM_SPECIES_NAME_ER, &
    KIM_SPECIES_NAME_TM, &
    KIM_SPECIES_NAME_YB, &
    KIM_SPECIES_NAME_LU, &
    KIM_SPECIES_NAME_HF, &
    KIM_SPECIES_NAME_TA, &
    KIM_SPECIES_NAME_W, &
    KIM_SPECIES_NAME_RE, &
    KIM_SPECIES_NAME_OS, &
    KIM_SPECIES_NAME_IR, &
    KIM_SPECIES_NAME_PT, &
    KIM_SPECIES_NAME_AU, &
    KIM_SPECIES_NAME_HG, &
    KIM_SPECIES_NAME_TL, &
    KIM_SPECIES_NAME_PB, &
    KIM_SPECIES_NAME_BI, &
    KIM_SPECIES_NAME_PO, &
    KIM_SPECIES_NAME_AT, &
    KIM_SPECIES_NAME_RN, &
    KIM_SPECIES_NAME_FR, &
    KIM_SPECIES_NAME_RA, &
    KIM_SPECIES_NAME_AC, &
    KIM_SPECIES_NAME_TH, &
    KIM_SPECIES_NAME_PA, &
    KIM_SPECIES_NAME_U, &
    KIM_SPECIES_NAME_NP, &
    KIM_SPECIES_NAME_PU, &
    KIM_SPECIES_NAME_AM, &
    KIM_SPECIES_NAME_CM, &
    KIM_SPECIES_NAME_BK, &
    KIM_SPECIES_NAME_CF, &
    KIM_SPECIES_NAME_ES, &
    KIM_SPECIES_NAME_FM, &
    KIM_SPECIES_NAME_MD, &
    KIM_SPECIES_NAME_NO, &
    KIM_SPECIES_NAME_LR, &
    KIM_SPECIES_NAME_RF, &
    KIM_SPECIES_NAME_DB, &
    KIM_SPECIES_NAME_SG, &
    KIM_SPECIES_NAME_BH, &
    KIM_SPECIES_NAME_HS, &
    KIM_SPECIES_NAME_MT, &
    KIM_SPECIES_NAME_DS, &
    KIM_SPECIES_NAME_RG, &
    KIM_SPECIES_NAME_CN, &
    KIM_SPECIES_NAME_NH, &
    KIM_SPECIES_NAME_FL, &
    KIM_SPECIES_NAME_MC, &
    KIM_SPECIES_NAME_LV, &
    KIM_SPECIES_NAME_TS, &
    KIM_SPECIES_NAME_OG, &
    KIM_SPECIES_NAME_USER01, &
    KIM_SPECIES_NAME_USER02, &
    KIM_SPECIES_NAME_USER03, &
    KIM_SPECIES_NAME_USER04, &
    KIM_SPECIES_NAME_USER05, &
    KIM_SPECIES_NAME_USER06, &
    KIM_SPECIES_NAME_USER07, &
    KIM_SPECIES_NAME_USER08, &
    KIM_SPECIES_NAME_USER09, &
    KIM_SPECIES_NAME_USER10, &
    KIM_SPECIES_NAME_USER11, &
    KIM_SPECIES_NAME_USER12, &
    KIM_SPECIES_NAME_USER13, &
    KIM_SPECIES_NAME_USER14, &
    KIM_SPECIES_NAME_USER15, &
    KIM_SPECIES_NAME_USER16, &
    KIM_SPECIES_NAME_USER17, &
    KIM_SPECIES_NAME_USER18, &
    KIM_SPECIES_NAME_USER19, &
    KIM_SPECIES_NAME_USER20, &
    ! Routines
    kim_known, &
    operator(.eq.), &
    operator(.ne.), &
    kim_from_string, &
    kim_to_string, &
    kim_get_number_of_species_names, &
    kim_get_species_name

  !> \brief \copybrief KIM::SpeciesName
  !!
  !! \sa KIM::SpeciesName, KIM_SpeciesName
  !!
  !! \since 2.0
  type, bind(c) :: kim_species_name_type
    integer(c_int) species_name_id
  end type kim_species_name_type

  !> \brief \copybrief KIM::SPECIES_NAME::electron
  !!
  !! \sa KIM::SPECIES_NAME::electron, KIM_SPECIES_NAME_electron
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_ELECTRON = kim_species_name_type(0)

  !> \brief \copybrief KIM::SPECIES_NAME::H
  !!
  !! \sa KIM::SPECIES_NAME::H, KIM_SPECIES_NAME_H
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_H = kim_species_name_type(1)

  !> \brief \copybrief KIM::SPECIES_NAME::He
  !!
  !! \sa KIM::SPECIES_NAME::He, KIM_SPECIES_NAME_He
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_HE = kim_species_name_type(2)

  !> \brief \copybrief KIM::SPECIES_NAME::Li
  !!
  !! \sa KIM::SPECIES_NAME::Li, KIM_SPECIES_NAME_Li
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_LI = kim_species_name_type(3)

  !> \brief \copybrief KIM::SPECIES_NAME::Be  
  !!
  !! \sa KIM::SPECIES_NAME::Be, KIM_SPECIES_NAME_Be
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_BE = kim_species_name_type(4)

  !> \brief \copybrief KIM::SPECIES_NAME::B
  !!  
  !! \sa KIM::SPECIES_NAME::B, KIM_SPECIES_NAME_B
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_B = kim_species_name_type(5)

  !> \brief \copybrief KIM::SPECIES_NAME::C
  !!
  !! \sa KIM::SPECIES_NAME::C, KIM_SPECIES_NAME_C  
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_C = kim_species_name_type(6)

  !> \brief \copybrief KIM::SPECIES_NAME::N
  !!
  !! \sa KIM::SPECIES_NAME::N, KIM_SPECIES_NAME_N
  !!  
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_N = kim_species_name_type(7)

  !> \brief \copybrief KIM::SPECIES_NAME::O
  !!
  !! \sa KIM::SPECIES_NAME::O, KIM_SPECIES_NAME_O
  !!
  !! \since 2.0  
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_O = kim_species_name_type(8)

  !> \brief \copybrief KIM::SPECIES_NAME::F
  !!
  !! \sa KIM::SPECIES_NAME::F, KIM_SPECIES_NAME_F
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &  
    KIM_SPECIES_NAME_F = kim_species_name_type(9)

  !> \brief \copybrief KIM::SPECIES_NAME::Ne
  !!
  !! \sa KIM::SPECIES_NAME::Ne, KIM_SPECIES_NAME_Ne
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NE = kim_species_name_type(10)

  !> \brief \copybrief KIM::SPECIES_NAME::Na
  !!
  !! \sa KIM::SPECIES_NAME::Na, KIM_SPECIES_NAME_Na
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NA = kim_species_name_type(11)

  !> \brief \copybrief KIM::SPECIES_NAME::Mg
  !!
  !! \sa KIM::SPECIES_NAME::Mg, KIM_SPECIES_NAME_Mg
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_MG = kim_species_name_type(12)

  !> \brief \copybrief KIM::SPECIES_NAME::Al
  !!
  !! \sa KIM::SPECIES_NAME::Al, KIM_SPECIES_NAME_Al
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AL = kim_species_name_type(13)

  !> \brief \copybrief KIM::SPECIES_NAME::Si
  !!
  !! \sa KIM::SPECIES_NAME::Si, KIM_SPECIES_NAME_Si
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SI = kim_species_name_type(14)

  !> \brief \copybrief KIM::SPECIES_NAME::P
  !!
  !! \sa KIM::SPECIES_NAME::P, KIM_SPECIES_NAME_P
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_P = kim_species_name_type(15)

  !> \brief \copybrief KIM::SPECIES_NAME::S
  !!
  !! \sa KIM::SPECIES_NAME::S, KIM_SPECIES_NAME_S
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_S = kim_species_name_type(16)

  !> \brief \copybrief KIM::SPECIES_NAME::Cl
  !!
  !! \sa KIM::SPECIES_NAME::Cl, KIM_SPECIES_NAME_Cl
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CL = kim_species_name_type(17)

  !> \brief \copybrief KIM::SPECIES_NAME::Ar
  !!
  !! \sa KIM::SPECIES_NAME::Ar, KIM_SPECIES_NAME_Ar
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AR = kim_species_name_type(18)

  !> \brief \copybrief KIM::SPECIES_NAME::K
  !!
  !! \sa KIM::SPECIES_NAME::K, KIM_SPECIES_NAME_K
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_K = kim_species_name_type(19)

  !> \brief \copybrief KIM::SPECIES_NAME::Ca
  !!
  !! \sa KIM::SPECIES_NAME::Ca, KIM_SPECIES_NAME_Ca
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CA = kim_species_name_type(20)

  !> \brief \copybrief KIM::SPECIES_NAME::Sc
  !!
  !! \sa KIM::SPECIES_NAME::Sc, KIM_SPECIES_NAME_Sc
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SC = kim_species_name_type(21)

  !> \brief \copybrief KIM::SPECIES_NAME::Ti
  !!
  !! \sa KIM::SPECIES_NAME::Ti, KIM_SPECIES_NAME_Ti
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TI = kim_species_name_type(22)

  !> \brief \copybrief KIM::SPECIES_NAME::V
  !!
  !! \sa KIM::SPECIES_NAME::V, KIM_SPECIES_NAME_V
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_V = kim_species_name_type(23)

  !> \brief \copybrief KIM::SPECIES_NAME::Cr
  !!
  !! \sa KIM::SPECIES_NAME::Cr, KIM_SPECIES_NAME_Cr
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CR = kim_species_name_type(24)

  !> \brief \copybrief KIM::SPECIES_NAME::Mn
  !!
  !! \sa KIM::SPECIES_NAME::Mn, KIM_SPECIES_NAME_Mn
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_MN = kim_species_name_type(25)

  !> \brief \copybrief KIM::SPECIES_NAME::Fe
  !!
  !! \sa KIM::SPECIES_NAME::Fe, KIM_SPECIES_NAME_Fe
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_FE = kim_species_name_type(26)

  !> \brief \copybrief KIM::SPECIES_NAME::Co
  !!
  !! \sa KIM::SPECIES_NAME::Co, KIM_SPECIES_NAME_Co
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CO = kim_species_name_type(27)

  !> \brief \copybrief KIM::SPECIES_NAME::Ni
  !!
  !! \sa KIM::SPECIES_NAME::Ni, KIM_SPECIES_NAME_Ni
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NI = kim_species_name_type(28)

  !> \brief \copybrief KIM::SPECIES_NAME::Cu
  !!
  !! \sa KIM::SPECIES_NAME::Cu, KIM_SPECIES_NAME_Cu
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CU = kim_species_name_type(29)

  !> \brief \copybrief KIM::SPECIES_NAME::Zn
  !!
  !! \sa KIM::SPECIES_NAME::Zn, KIM_SPECIES_NAME_Zn
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_ZN = kim_species_name_type(30)

  !> \brief \copybrief KIM::SPECIES_NAME::Ga
  !!
  !! \sa KIM::SPECIES_NAME::Ga, KIM_SPECIES_NAME_Ga
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_GA = kim_species_name_type(31)

  !> \brief \copybrief KIM::SPECIES_NAME::Ge
  !!
  !! \sa KIM::SPECIES_NAME::Ge, KIM_SPECIES_NAME_Ge
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_GE = kim_species_name_type(32)

  !> \brief \copybrief KIM::SPECIES_NAME::As
  !!
  !! \sa KIM::SPECIES_NAME::As, KIM_SPECIES_NAME_As
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AS = kim_species_name_type(33)

  !> \brief \copybrief KIM::SPECIES_NAME::Se
  !!
  !! \sa KIM::SPECIES_NAME::Se, KIM_SPECIES_NAME_Se
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SE = kim_species_name_type(34)

  !> \brief \copybrief KIM::SPECIES_NAME::Br
  !!
  !! \sa KIM::SPECIES_NAME::Br, KIM_SPECIES_NAME_Br
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_BR = kim_species_name_type(35)

  !> \brief \copybrief KIM::SPECIES_NAME::Kr
  !!
  !! \sa KIM::SPECIES_NAME::Kr, KIM_SPECIES_NAME_Kr
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_KR = kim_species_name_type(36)

  !> \brief \copybrief KIM::SPECIES_NAME::Rb
  !!
  !! \sa KIM::SPECIES_NAME::Rb, KIM_SPECIES_NAME_Rb
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RB = kim_species_name_type(37)

  !> \brief \copybrief KIM::SPECIES_NAME::Sr
  !!
  !! \sa KIM::SPECIES_NAME::Sr, KIM_SPECIES_NAME_Sr
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SR = kim_species_name_type(38)

  !> \brief \copybrief KIM::SPECIES_NAME::Y
  !!
  !! \sa KIM::SPECIES_NAME::Y, KIM_SPECIES_NAME_Y
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_Y = kim_species_name_type(39)

  !> \brief \copybrief KIM::SPECIES_NAME::Zr
  !!
  !! \sa KIM::SPECIES_NAME::Zr, KIM_SPECIES_NAME_Zr
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_ZR = kim_species_name_type(40)

  !> \brief \copybrief KIM::SPECIES_NAME::Nb
  !!
  !! \sa KIM::SPECIES_NAME::Nb, KIM_SPECIES_NAME_Nb
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NB = kim_species_name_type(41)

  !> \brief \copybrief KIM::SPECIES_NAME::Mo
  !!
  !! \sa KIM::SPECIES_NAME::Mo, KIM_SPECIES_NAME_Mo
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_MO = kim_species_name_type(42)

  !> \brief \copybrief KIM::SPECIES_NAME::Tc
  !!
  !! \sa KIM::SPECIES_NAME::Tc, KIM_SPECIES_NAME_Tc
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TC = kim_species_name_type(43)

  !> \brief \copybrief KIM::SPECIES_NAME::Ru
  !!
  !! \sa KIM::SPECIES_NAME::Ru, KIM_SPECIES_NAME_Ru
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RU = kim_species_name_type(44)

  !> \brief \copybrief KIM::SPECIES_NAME::Rh
  !!
  !! \sa KIM::SPECIES_NAME::Rh, KIM_SPECIES_NAME_Rh
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RH = kim_species_name_type(45)

  !> \brief \copybrief KIM::SPECIES_NAME::Pd
  !!
  !! \sa KIM::SPECIES_NAME::Pd, KIM_SPECIES_NAME_Pd
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PD = kim_species_name_type(46)

  !> \brief \copybrief KIM::SPECIES_NAME::Ag
  !!
  !! \sa KIM::SPECIES_NAME::Ag, KIM_SPECIES_NAME_Ag
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AG = kim_species_name_type(47)

  !> \brief \copybrief KIM::SPECIES_NAME::Cd
  !!
  !! \sa KIM::SPECIES_NAME::Cd, KIM_SPECIES_NAME_Cd
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CD = kim_species_name_type(48)

  !> \brief \copybrief KIM::SPECIES_NAME::In
  !!
  !! \sa KIM::SPECIES_NAME::In, KIM_SPECIES_NAME_In
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_IN = kim_species_name_type(49)

  !> \brief \copybrief KIM::SPECIES_NAME::Sn
  !!
  !! \sa KIM::SPECIES_NAME::Sn, KIM_SPECIES_NAME_Sn
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SN = kim_species_name_type(50)

  !> \brief \copybrief KIM::SPECIES_NAME::Sb
  !!
  !! \sa KIM::SPECIES_NAME::Sb, KIM_SPECIES_NAME_Sb
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SB = kim_species_name_type(51)

  !> \brief \copybrief KIM::SPECIES_NAME::Te
  !!
  !! \sa KIM::SPECIES_NAME::Te, KIM_SPECIES_NAME_Te
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TE = kim_species_name_type(52)

  !> \brief \copybrief KIM::SPECIES_NAME::I
  !!
  !! \sa KIM::SPECIES_NAME::I, KIM_SPECIES_NAME_I
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_I = kim_species_name_type(53)

  !> \brief \copybrief KIM::SPECIES_NAME::Xe
  !!
  !! \sa KIM::SPECIES_NAME::Xe, KIM_SPECIES_NAME_Xe
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_XE = kim_species_name_type(54)

  !> \brief \copybrief KIM::SPECIES_NAME::Cs
  !!
  !! \sa KIM::SPECIES_NAME::Cs, KIM_SPECIES_NAME_Cs
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CS = kim_species_name_type(55)

  !> \brief \copybrief KIM::SPECIES_NAME::Ba
  !!
  !! \sa KIM::SPECIES_NAME::Ba, KIM_SPECIES_NAME_Ba
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_BA = kim_species_name_type(56)

  !> \brief \copybrief KIM::SPECIES_NAME::La
  !!
  !! \sa KIM::SPECIES_NAME::La, KIM_SPECIES_NAME_La
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_LA = kim_species_name_type(57)

  !> \brief \copybrief KIM::SPECIES_NAME::Ce
  !!
  !! \sa KIM::SPECIES_NAME::Ce, KIM_SPECIES_NAME_Ce
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CE = kim_species_name_type(58)

  !> \brief \copybrief KIM::SPECIES_NAME::Pr
  !!
  !! \sa KIM::SPECIES_NAME::Pr, KIM_SPECIES_NAME_Pr
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PR = kim_species_name_type(59)

  !> \brief \copybrief KIM::SPECIES_NAME::Nd
  !!
  !! \sa KIM::SPECIES_NAME::Nd, KIM_SPECIES_NAME_Nd
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_ND = kim_species_name_type(60)

  !> \brief \copybrief KIM::SPECIES_NAME::Pm
  !!
  !! \sa KIM::SPECIES_NAME::Pm, KIM_SPECIES_NAME_Pm
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PM = kim_species_name_type(61)

  !> \brief \copybrief KIM::SPECIES_NAME::Sm
  !!
  !! \sa KIM::SPECIES_NAME::Sm, KIM_SPECIES_NAME_Sm
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SM = kim_species_name_type(62)

  !> \brief \copybrief KIM::SPECIES_NAME::Eu
  !!
  !! \sa KIM::SPECIES_NAME::Eu, KIM_SPECIES_NAME_Eu
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_EU = kim_species_name_type(63)

  !> \brief \copybrief KIM::SPECIES_NAME::Gd
  !!
  !! \sa KIM::SPECIES_NAME::Gd, KIM_SPECIES_NAME_Gd
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_GD = kim_species_name_type(64)

  !> \brief \copybrief KIM::SPECIES_NAME::Tb
  !!
  !! \sa KIM::SPECIES_NAME::Tb, KIM_SPECIES_NAME_Tb
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TB = kim_species_name_type(65)

  !> \brief \copybrief KIM::SPECIES_NAME::Dy
  !!
  !! \sa KIM::SPECIES_NAME::Dy, KIM_SPECIES_NAME_Dy
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_DY = kim_species_name_type(66)

  !> \brief \copybrief KIM::SPECIES_NAME::Ho
  !!
  !! \sa KIM::SPECIES_NAME::Ho, KIM_SPECIES_NAME_Ho
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_HO = kim_species_name_type(67)

  !> \brief \copybrief KIM::SPECIES_NAME::Er
  !!
  !! \sa KIM::SPECIES_NAME::Er, KIM_SPECIES_NAME_Er
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_ER = kim_species_name_type(68)

  !> \brief \copybrief KIM::SPECIES_NAME::Tm
  !!
  !! \sa KIM::SPECIES_NAME::Tm, KIM_SPECIES_NAME_Tm
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TM = kim_species_name_type(69)

  !> \brief \copybrief KIM::SPECIES_NAME::Yb
  !!
  !! \sa KIM::SPECIES_NAME::Yb, KIM_SPECIES_NAME_Yb
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_YB = kim_species_name_type(70)

  !> \brief \copybrief KIM::SPECIES_NAME::Lu
  !!
  !! \sa KIM::SPECIES_NAME::Lu, KIM_SPECIES_NAME_Lu
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_LU = kim_species_name_type(71)

  !> \brief \copybrief KIM::SPECIES_NAME::Hf
  !!
  !! \sa KIM::SPECIES_NAME::Hf, KIM_SPECIES_NAME_Hf
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_HF = kim_species_name_type(72)

  !> \brief \copybrief KIM::SPECIES_NAME::Ta
  !!
  !! \sa KIM::SPECIES_NAME::Ta, KIM_SPECIES_NAME_Ta
  !!
  !! \since 2.0
    type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TA = kim_species_name_type(73)

  !> \brief \copybrief KIM::SPECIES_NAME::W
  !!
  !! \sa KIM::SPECIES_NAME::W, KIM_SPECIES_NAME_W
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_W = kim_species_name_type(74)

  !> \brief \copybrief KIM::SPECIES_NAME::Re
  !!
  !! \sa KIM::SPECIES_NAME::Re, KIM_SPECIES_NAME_Re
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RE = kim_species_name_type(75)

  !> \brief \copybrief KIM::SPECIES_NAME::Os
  !!
  !! \sa KIM::SPECIES_NAME::Os, KIM_SPECIES_NAME_Os
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_OS = kim_species_name_type(76)

  !> \brief \copybrief KIM::SPECIES_NAME::Ir
  !!
  !! \sa KIM::SPECIES_NAME::Ir, KIM_SPECIES_NAME_Ir
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_IR = kim_species_name_type(77)

  !> \brief \copybrief KIM::SPECIES_NAME::Pt
  !!
  !! \sa KIM::SPECIES_NAME::Pt, KIM_SPECIES_NAME_Pt
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PT = kim_species_name_type(78)

  !> \brief \copybrief KIM::SPECIES_NAME::Au
  !!
  !! \sa KIM::SPECIES_NAME::Au, KIM_SPECIES_NAME_Au
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AU = kim_species_name_type(79)

  !> \brief \copybrief KIM::SPECIES_NAME::Hg
  !!
  !! \sa KIM::SPECIES_NAME::Hg, KIM_SPECIES_NAME_Hg
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_HG = kim_species_name_type(80)

  !> \brief \copybrief KIM::SPECIES_NAME::Tl
  !!
  !! \sa KIM::SPECIES_NAME::Tl, KIM_SPECIES_NAME_Tl
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TL = kim_species_name_type(81)

  !> \brief \copybrief KIM::SPECIES_NAME::Pb
  !!
  !! \sa KIM::SPECIES_NAME::Pb, KIM_SPECIES_NAME_Pb
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PB = kim_species_name_type(82)

  !> \brief \copybrief KIM::SPECIES_NAME::Bi
  !!
  !! \sa KIM::SPECIES_NAME::Bi, KIM_SPECIES_NAME_Bi
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_BI = kim_species_name_type(83)

  !> \brief \copybrief KIM::SPECIES_NAME::Po
  !!
  !! \sa KIM::SPECIES_NAME::Po, KIM_SPECIES_NAME_Po
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PO = kim_species_name_type(84)

  !> \brief \copybrief KIM::SPECIES_NAME::At
  !!
  !! \sa KIM::SPECIES_NAME::At, KIM_SPECIES_NAME_At
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AT = kim_species_name_type(85)

  !> \brief \copybrief KIM::SPECIES_NAME::Rn
  !!
  !! \sa KIM::SPECIES_NAME::Rn, KIM_SPECIES_NAME_Rn
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RN = kim_species_name_type(86)

  !> \brief \copybrief KIM::SPECIES_NAME::Fr
  !!
  !! \sa KIM::SPECIES_NAME::Fr, KIM_SPECIES_NAME_Fr
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_FR = kim_species_name_type(87)

  !> \brief \copybrief KIM::SPECIES_NAME::Ra
  !!
  !! \sa KIM::SPECIES_NAME::Ra, KIM_SPECIES_NAME_Ra
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RA = kim_species_name_type(88)

  !> \brief \copybrief KIM::SPECIES_NAME::Ac
  !!
  !! \sa KIM::SPECIES_NAME::Ac, KIM_SPECIES_NAME_Ac
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AC = kim_species_name_type(89)

  !> \brief \copybrief KIM::SPECIES_NAME::Th
  !!
  !! \sa KIM::SPECIES_NAME::Th, KIM_SPECIES_NAME_Th
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TH = kim_species_name_type(90)

  !> \brief \copybrief KIM::SPECIES_NAME::Pa
  !!
  !! \sa KIM::SPECIES_NAME::Pa, KIM_SPECIES_NAME_Pa
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PA = kim_species_name_type(91)

  !> \brief \copybrief KIM::SPECIES_NAME::U
  !!
  !! \sa KIM::SPECIES_NAME::U, KIM_SPECIES_NAME_U
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_U = kim_species_name_type(92)

  !> \brief \copybrief KIM::SPECIES_NAME::Np
  !!
  !! \sa KIM::SPECIES_NAME::Np, KIM_SPECIES_NAME_Np
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NP = kim_species_name_type(93)

  !> \brief \copybrief KIM::SPECIES_NAME::Pu
  !!
  !! \sa KIM::SPECIES_NAME::Pu, KIM_SPECIES_NAME_Pu
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_PU = kim_species_name_type(94)

  !> \brief \copybrief KIM::SPECIES_NAME::Am
  !!
  !! \sa KIM::SPECIES_NAME::Am, KIM_SPECIES_NAME_Am
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_AM = kim_species_name_type(95)

  !> \brief \copybrief KIM::SPECIES_NAME::Cm
  !!
  !! \sa KIM::SPECIES_NAME::Cm, KIM_SPECIES_NAME_Cm
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CM = kim_species_name_type(96)

  !> \brief \copybrief KIM::SPECIES_NAME::Bk
  !!
  !! \sa KIM::SPECIES_NAME::Bk, KIM_SPECIES_NAME_Bk
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_BK = kim_species_name_type(97)

  !> \brief \copybrief KIM::SPECIES_NAME::Cf
  !!
  !! \sa KIM::SPECIES_NAME::Cf, KIM_SPECIES_NAME_Cf
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CF = kim_species_name_type(98)

  !> \brief \copybrief KIM::SPECIES_NAME::Es
  !!
  !! \sa KIM::SPECIES_NAME::Es, KIM_SPECIES_NAME_Es
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_ES = kim_species_name_type(99)

  !> \brief \copybrief KIM::SPECIES_NAME::Fm
  !!
  !! \sa KIM::SPECIES_NAME::Fm, KIM_SPECIES_NAME_Fm
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_FM = kim_species_name_type(100)

  !> \brief \copybrief KIM::SPECIES_NAME::Md
  !!
  !! \sa KIM::SPECIES_NAME::Md, KIM_SPECIES_NAME_Md
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_MD = kim_species_name_type(101)

  !> \brief \copybrief KIM::SPECIES_NAME::No
  !!
  !! \sa KIM::SPECIES_NAME::No, KIM_SPECIES_NAME_No
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NO = kim_species_name_type(102)

  !> \brief \copybrief KIM::SPECIES_NAME::Lr
  !!
  !! \sa KIM::SPECIES_NAME::Lr, KIM_SPECIES_NAME_Lr
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_LR = kim_species_name_type(103)

  !> \brief \copybrief KIM::SPECIES_NAME::Rf
  !!
  !! \sa KIM::SPECIES_NAME::Rf, KIM_SPECIES_NAME_Rf
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RF = kim_species_name_type(104)

  !> \brief \copybrief KIM::SPECIES_NAME::Db
  !!
  !! \sa KIM::SPECIES_NAME::Db, KIM_SPECIES_NAME_Db
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_DB = kim_species_name_type(105)

  !> \brief \copybrief KIM::SPECIES_NAME::Sg
  !!
  !! \sa KIM::SPECIES_NAME::Sg, KIM_SPECIES_NAME_Sg
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_SG = kim_species_name_type(106)

  !> \brief \copybrief KIM::SPECIES_NAME::Bh
  !!
  !! \sa KIM::SPECIES_NAME::Bh, KIM_SPECIES_NAME_Bh
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_BH = kim_species_name_type(107)

  !> \brief \copybrief KIM::SPECIES_NAME::Hs
  !!
  !! \sa KIM::SPECIES_NAME::Hs, KIM_SPECIES_NAME_Hs
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_HS = kim_species_name_type(108)

  !> \brief \copybrief KIM::SPECIES_NAME::Mt
  !!
  !! \sa KIM::SPECIES_NAME::Mt, KIM_SPECIES_NAME_Mt
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_MT = kim_species_name_type(109)

  !> \brief \copybrief KIM::SPECIES_NAME::Ds
  !!
  !! \sa KIM::SPECIES_NAME::Ds, KIM_SPECIES_NAME_Ds
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_DS = kim_species_name_type(110)

  !> \brief \copybrief KIM::SPECIES_NAME::Rg
  !!
  !! \sa KIM::SPECIES_NAME::Rg, KIM_SPECIES_NAME_Rg
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_RG = kim_species_name_type(111)

  !> \brief \copybrief KIM::SPECIES_NAME::Cn
  !!
  !! \sa KIM::SPECIES_NAME::Cn, KIM_SPECIES_NAME_Cn
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_CN = kim_species_name_type(112)

  !> \brief \copybrief KIM::SPECIES_NAME::Nh
  !!
  !! \sa KIM::SPECIES_NAME::Nh, KIM_SPECIES_NAME_Nh
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_NH = kim_species_name_type(113)

  !> \brief \copybrief KIM::SPECIES_NAME::Fl
  !!
  !! \sa KIM::SPECIES_NAME::Fl, KIM_SPECIES_NAME_Fl
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_FL = kim_species_name_type(114)

  !> \brief \copybrief KIM::SPECIES_NAME::Mc
  !!
  !! \sa KIM::SPECIES_NAME::Mc, KIM_SPECIES_NAME_Mc
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_MC = kim_species_name_type(115)

  !> \brief \copybrief KIM::SPECIES_NAME::Lv
  !!
  !! \sa KIM::SPECIES_NAME::Lv, KIM_SPECIES_NAME_Lv
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_LV = kim_species_name_type(116)

  !> \brief \copybrief KIM::SPECIES_NAME::Ts
  !!
  !! \sa KIM::SPECIES_NAME::Ts, KIM_SPECIES_NAME_Ts
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_TS = kim_species_name_type(117)

  !> \brief \copybrief KIM::SPECIES_NAME::Og
  !!
  !! \sa KIM::SPECIES_NAME::Og, KIM_SPECIES_NAME_Og
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_OG = kim_species_name_type(118)

  !> \brief \copybrief KIM::SPECIES_NAME::user01
  !!
  !! \sa KIM::SPECIES_NAME::user01, KIM_SPECIES_NAME_user01
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER01 = kim_species_name_type(201)

  !> \brief \copybrief KIM::SPECIES_NAME::user02
  !!
  !! \sa KIM::SPECIES_NAME::user02, KIM_SPECIES_NAME_user02
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER02 = kim_species_name_type(202)

  !> \brief \copybrief KIM::SPECIES_NAME::user03
  !!
  !! \sa KIM::SPECIES_NAME::user03, KIM_SPECIES_NAME_user03
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER03 = kim_species_name_type(203)

  !> \brief \copybrief KIM::SPECIES_NAME::user04
  !!
  !! \sa KIM::SPECIES_NAME::user04, KIM_SPECIES_NAME_user04
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER04 = kim_species_name_type(204)

  !> \brief \copybrief KIM::SPECIES_NAME::user05
  !!
  !! \sa KIM::SPECIES_NAME::user05, KIM_SPECIES_NAME_user05
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER05 = kim_species_name_type(205)

  !> \brief \copybrief KIM::SPECIES_NAME::user06
  !!
  !! \sa KIM::SPECIES_NAME::user06, KIM_SPECIES_NAME_user06
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER06 = kim_species_name_type(206)

  !> \brief \copybrief KIM::SPECIES_NAME::user07
  !!
  !! \sa KIM::SPECIES_NAME::user07, KIM_SPECIES_NAME_user07
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER07 = kim_species_name_type(207)

  !> \brief \copybrief KIM::SPECIES_NAME::user08
  !!
  !! \sa KIM::SPECIES_NAME::user08, KIM_SPECIES_NAME_user08
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER08 = kim_species_name_type(208)

  !> \brief \copybrief KIM::SPECIES_NAME::user09
  !!
  !! \sa KIM::SPECIES_NAME::user09, KIM_SPECIES_NAME_user09
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER09 = kim_species_name_type(209)

  !> \brief \copybrief KIM::SPECIES_NAME::user10
  !!
  !! \sa KIM::SPECIES_NAME::user10, KIM_SPECIES_NAME_user10
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER10 = kim_species_name_type(210)

  !> \brief \copybrief KIM::SPECIES_NAME::user11
  !!
  !! \sa KIM::SPECIES_NAME::user11, KIM_SPECIES_NAME_user11
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER11 = kim_species_name_type(211)

  !> \brief \copybrief KIM::SPECIES_NAME::user12
  !!
  !! \sa KIM::SPECIES_NAME::user12, KIM_SPECIES_NAME_user12
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER12 = kim_species_name_type(212)

  !> \brief \copybrief KIM::SPECIES_NAME::user13
  !!
  !! \sa KIM::SPECIES_NAME::user13, KIM_SPECIES_NAME_user13
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER13 = kim_species_name_type(213)

  !> \brief \copybrief KIM::SPECIES_NAME::user14
  !!
  !! \sa KIM::SPECIES_NAME::user14, KIM_SPECIES_NAME_user14
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER14 = kim_species_name_type(214)

  !> \brief \copybrief KIM::SPECIES_NAME::user15
  !!
  !! \sa KIM::SPECIES_NAME::user15, KIM_SPECIES_NAME_user15
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER15 = kim_species_name_type(215)

  !> \brief \copybrief KIM::SPECIES_NAME::user16
  !!
  !! \sa KIM::SPECIES_NAME::user16, KIM_SPECIES_NAME_user16
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER16 = kim_species_name_type(216)

  !> \brief \copybrief KIM::SPECIES_NAME::user17
  !!
  !! \sa KIM::SPECIES_NAME::user17, KIM_SPECIES_NAME_user17
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER17 = kim_species_name_type(217)

  !> \brief \copybrief KIM::SPECIES_NAME::user18
  !!
  !! \sa KIM::SPECIES_NAME::user18, KIM_SPECIES_NAME_user18
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER18 = kim_species_name_type(218)

  !> \brief \copybrief KIM::SPECIES_NAME::user19
  !!
  !! \sa KIM::SPECIES_NAME::user19, KIM_SPECIES_NAME_user19
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER19 = kim_species_name_type(219)

  !> \brief \copybrief KIM::SPECIES_NAME::user20
  !!
  !! \sa KIM::SPECIES_NAME::user20, KIM_SPECIES_NAME_user20
  !!
  !! \since 2.0
  type(kim_species_name_type), parameter :: &
    KIM_SPECIES_NAME_USER20 = kim_species_name_type(220)

  !> \brief \copybrief KIM::SpeciesName::Known
  !!
  !! \sa KIM::SpeciesName::Known, KIM_SpeciesName_Known
  !!
  !! \since 2.0
  interface kim_known
    module procedure kim_species_name_known
  end interface kim_known

  !> \brief \copybrief KIM::SpeciesName::operator==()
  !!
  !! \sa KIM::SpeciesName::operator==(), KIM_SpeciesName_Equal
  !!
  !! \since 2.0
  interface operator(.eq.)
    module procedure kim_species_name_equal
  end interface operator(.eq.)

  !> \brief \copybrief KIM::SpeciesName::operator!=()
  !!
  !! \sa KIM::SpeciesName::operator!=, KIM_SpeciesName_NotEqual
  !!
  !! \since 2.0
  interface operator(.ne.)
    module procedure kim_species_name_not_equal
  end interface operator(.ne.)

  !> \brief \copybrief KIM::SpeciesName::SpeciesName(std::string const &)
  !!
  !! \sa KIM::SpeciesName::SpeciesName(std::string const &),
  !! KIM_SpeciesName_FromString
  !!
  !! \since 2.0
  interface kim_from_string
    module procedure kim_species_name_from_string
  end interface kim_from_string

  !> \brief \copybrief KIM::SpeciesName::ToString
  !!
  !! \sa KIM::SpeciesName::ToString, KIM_SpeciesName_ToSting
  !!
  !! \since 2.0
  interface kim_to_string
    module procedure kim_species_name_to_string
  end interface kim_to_string

contains
  !> \brief \copybrief KIM::SpeciesName::Known
  !!
  !! \sa KIM::SpeciesName::Known, KIM_SpeciesName_Known
  !!
  !! \since 2.0
  logical recursive function kim_species_name_known(species_name)
    implicit none
    interface
      integer(c_int) recursive function known(species_name) &
        bind(c, name="KIM_SpeciesName_Known")
        use, intrinsic :: iso_c_binding
        import kim_species_name_type
        implicit none
        type(kim_species_name_type), intent(in), value :: species_name
      end function known
    end interface
    type(kim_species_name_type), intent(in) :: species_name

    kim_species_name_known = (known(species_name) /= 0)
  end function kim_species_name_known

  !> \brief \copybrief KIM::SpeciesName::operator==()
  !!
  !! \sa KIM::SpeciesName::operator==(), KIM_SpeciesName_Equal
  !!
  !! \since 2.0
  logical recursive function kim_species_name_equal(lhs, rhs)
    implicit none
    type(kim_species_name_type), intent(in) :: lhs
    type(kim_species_name_type), intent(in) :: rhs

    kim_species_name_equal &
      = (lhs%species_name_id == rhs%species_name_id)
  end function kim_species_name_equal

  !> \brief \copybrief KIM::SpeciesName::operator!=()
  !!
  !! \sa KIM::SpeciesName::operator!=, KIM_SpeciesName_NotEqual
  !!
  !! \since 2.0
  logical recursive function kim_species_name_not_equal(lhs, rhs)
    implicit none
    type(kim_species_name_type), intent(in) :: lhs
    type(kim_species_name_type), intent(in) :: rhs

    kim_species_name_not_equal = .not. (lhs == rhs)
  end function kim_species_name_not_equal

  !> \brief \copybrief KIM::SpeciesName::SpeciesName(std::string const &)
  !!
  !! \sa KIM::SpeciesName::SpeciesName(std::string const &),
  !! KIM_SpeciesName_FromString
  !!
  !! \since 2.0
  recursive subroutine kim_species_name_from_string(string, species_name)
    implicit none
    interface
      type(kim_species_name_type) recursive function from_string(string) &
        bind(c, name="KIM_SpeciesName_FromString")
        use, intrinsic :: iso_c_binding
        import kim_species_name_type
        implicit none
        character(c_char), intent(in) :: string(*)
      end function from_string
    end interface
    character(len=*, kind=c_char), intent(in) :: string
    type(kim_species_name_type), intent(out) :: species_name

    species_name = from_string(trim(string)//c_null_char)
  end subroutine kim_species_name_from_string

  !> \brief \copybrief KIM::SpeciesName::ToString
  !!
  !! \sa KIM::SpeciesName::ToString, KIM_SpeciesName_ToSting
  !!
  !! \since 2.0
  recursive subroutine kim_species_name_to_string(species_name, string)
    use kim_convert_string_module, only: kim_convert_c_char_ptr_to_string
    implicit none
    interface
      type(c_ptr) recursive function get_string(species_name) &
        bind(c, name="KIM_SpeciesName_ToString")
        use, intrinsic :: iso_c_binding
        import kim_species_name_type
        implicit none
        type(kim_species_name_type), intent(in), value :: species_name
      end function get_string
    end interface
    type(kim_species_name_type), intent(in) :: species_name
    character(len=*, kind=c_char), intent(out) :: string

    type(c_ptr) :: p

    p = get_string(species_name)
    call kim_convert_c_char_ptr_to_string(p, string)
  end subroutine kim_species_name_to_string

  !> \brief \copybrief KIM::SPECIES_NAME::GetNumberOfSpeciesNames
  !!
  !! \sa KIM::SPECIES_NAME::GetNumberOfSpeciesNames,
  !! KIM_SPECIES_NAME_GetNumberOfSpeciesNames
  !!
  !! \since 2.0
  recursive subroutine kim_get_number_of_species_names(number_of_species_names)
    implicit none
    interface
      recursive subroutine get_number_of_species_names( &
        number_of_species_names) &
        bind(c, name="KIM_SPECIES_NAME_GetNumberOfSpeciesNames")
        use, intrinsic :: iso_c_binding
        implicit none
        integer(c_int), intent(out) :: number_of_species_names
      end subroutine get_number_of_species_names
    end interface
    integer(c_int), intent(out) :: number_of_species_names

    call get_number_of_species_names(number_of_species_names)
  end subroutine kim_get_number_of_species_names

  !> \brief \copybrief KIM::SPECIES_NAME::GetSpeciesName
  !!
  !! \sa KIM::SPECIES_NAME::GetSpeciesName, KIM_SPECIES_NAME_GetSpeciesName
  !!
  !! \since 2.0
  recursive subroutine kim_get_species_name(index, species_name, ierr)
    implicit none
    interface
      integer(c_int) recursive function get_species_name(index, species_name) &
        bind(c, name="KIM_SPECIES_NAME_GetSpeciesName")
        use, intrinsic :: iso_c_binding
        import kim_species_name_type
        implicit none
        integer(c_int), intent(in), value :: index
        type(kim_species_name_type), intent(out) :: species_name
      end function get_species_name
    end interface
    integer(c_int), intent(in) :: index
    type(kim_species_name_type), intent(out) :: species_name
    integer(c_int), intent(out) :: ierr

    ierr = get_species_name(index - 1, species_name)
  end subroutine kim_get_species_name
end module kim_species_name_module
