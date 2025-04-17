Goal: Create a crate for Alire for a specific board in the ADL. User will be able to download the board, and automatically download the ADL drivers. If he want to use an other board, It will then use be linked to the ADL already downloaded.


Solution: We split the ADL into 5 crates.
During compilation of single unit, we found out that some crate was depending on other crate
as describe below:

-- Middleware: Abstraction of the drivers. Depend on HAL and the board.
-- ARM: Drivers of the boards. Depends on HAL and Middleware.
-- Components.
-- hal. Independant.
-- [board folder] as an example, we will use the nucleo_f446re. Depend on middleware.
-- stm32_common. Depend on ARM.

How we proceeded (during test):

alr init --lib hal;
alr init --lib middleware;  cd middleware; alr with hal --use="../hal/"
alr init --lib arm; cd arm; alr with hal --use="../hal/"; lr with middleware --use="../middleware/" 
alr init --lib components; cd components; alr with hal --use="../hal/"
alr init --lib nucleo_f446re; cd nucleo_f446re; alr with arm --use="../arm/" 
alr init --lib stm32_common; cd nucleo_stm32_common; alr with hal --use="../hal/"

Then, we made a concrete project to build everyting:

alr init --bin f446re_example; cd f446re_example; alr with arm --use="../arm/"; alr with stm32_common --use="../stm32_common/"; 
alr build

In the middleware GPR. We add ADL_CONFIG_PATH variable set by the alire.toml in the nucleof446re.
Thus, every new board will have to add the following lines in their alire.toml:

[configuration.values]
adl_middleware_p.ADL_CONFIG_PATH = "../nucleo_f446re/src/full/"

This is needed to bypass circular reference with alire, since the middleware depend on the board.

The middleware .toml has these lines added:
[configuration.variables]
ADL_CONFIG_PATH = {type = "String", default = ""}
And the GPR has:  
for Source_Dirs use ("src/**", "config/", Adl_Middleware_P_Config.ADL_CONFIG_PATH);

The nucleo_f446re GPR is modified and every Source path is removed.


