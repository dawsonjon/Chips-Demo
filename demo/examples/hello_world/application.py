from demo.components.server import server
from chips.api.api import *

def application(chip):

    hello_world = Component(
    """
    #include <stdio.h>
    #include <print.h>
    stdout = output("rs232_tx");
    output_leds = output("leds");

    void main(){
        fputc(0xaa, output_leds);
        puts("Hello World!\n");
    }
    """, inline = True)

    hello_world(
        chip, 
        inputs = {}, 
        outputs = {"rs232_tx":chip.outputs["output_rs232_tx"],
                   "leds":chip.outputs["output_leds"]},
        parameters = {})
