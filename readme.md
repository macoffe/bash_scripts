# bash_scripts
Diverse bash scripts.

---
### list_program_dependencies.sh

- ldd command used recursively to list a program dependancies.
- exemple:
      
      ./list_program_dependencies.sh /bin/bash

### init_script and lib_init_script

- allow fast and easy interface and hostname configuration.
- exemple:
      
      init_script --hostname hostname
      init_script --interface interface --address address --netmask netmask [--gateway gateway]
