library ieee;
use ieee.std_logic_ll64.all; -- ignore these lines for now

entity Switches_To_LEDs is -- entity defines interface to module (four inputs and four outputs)
    port (
        -- defining port map (except for portmap on "top level" of the FPGA you can define your own names; the ones here are names of actual pins on the goboard)
        -- lots of repetitive code to type huh
        -- std_logic is a type, common type for port maps. Basically i_Swithc
        i_Switch_1 : in std_logic;
        i_Switch_2 : in std_logic;
        i_Switch_3 : in std_logic;
        i_Switch_4 : in std_logic;
        o_LED_1    : out std_logic;
        o_LED_2    : out std_logic;
        o_LED_3    : out std_logic;
        o_LED_4    : out std_logic
    );
end entity Switches_To_LEDs;

-- VHDL is not case sensitive like Verilog!
-- VHDL has entities and architectures (like an interface and then stuff inside the interface)

-- register transfer logic
architecture RTL of Switches_To_LEDs is
begin
    -- assignment operator is '<=' in VHDL. We are literally creating a physical wire from led 1 to switch 1
    o_LED_1 <= i_Switch_1;
    o_LED_2 <= i_Switch_2;
    o_LED_3 <= i_Switch_3;
    o_LED_4 <= i_Switch_4;

end architecture RTL;




