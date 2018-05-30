defmodule XGPS.Messages.GSA do
  # Example:
  # GPS DOP and active satellites
  # eg1. $GPGSA,A,3,,,,,,16,18,,22,24,,,3.6,2.1,2.2*3C
  # eg2. $GPGSA,A,3,19,28,14,18,27,22,31,39,,,,,1.7,1.0,1.3*35
  #
  # 1    = Mode:
  #        M=Manual, forced to operate in 2D or 3D
  #        A=Automatic, 3D/2D
  # 2    = Mode:
  #        1=Fix not available
  #        2=2D
  #        3=3D
  # 3-14 = IDs of SVs used in position fix (null for unused fields)
  # 15   = PDOP
  # 16   = HDOP
  # 17   = VDOP

  defstruct mode: nil,
            fix_quality: 0,
            pdop: 0,
            hdop: 0,
            vdop: 0
end
