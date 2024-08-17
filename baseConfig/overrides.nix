{pkgs, ...}:{
   environment.systemPackages = with pkgs; [
    
    (lutris.override {
       extraPkgs = pkgs: [
         wine
         gamescope
       ];

       extraLibraries =  pkgs: [
         nspr
         xorg.libXdamage
         xorg.libXfixes
       ];
    })

  ];
}
