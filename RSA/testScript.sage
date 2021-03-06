
import FranklinReiterSage
import hastadsSage
import partialKnownMessageSage

def main():

    print("[#] BEGIN CHECKING SAGE FILES")
    print("[#] Franklin Reiter Check")
    if(FranklinReiterSage.testFranklinReiter()):
        print("[*] Franklin Reiter Check Passed")
    else:
        print("[X] Franklin Reiter Check FAILED")
    print("[#] Partial Known Message(Coppersmith) Check")
    if("bu7_0N_4_w3Dn3sdAy_iN_a_c4f3_i_waTcH3dD_17_6eg1n_aga1n" in partialKnownMessageSage.testKnownMessageFormat()):
        print("[*] Partial Known Message(Coppersmith) Check Passed")
    else:
        print("[X] Partial Known Message(Coppersmith) Check FAILED")
    print("[#] Linear Padding Hastads Check")
    if(hastadsSage.testLinearPadding()):
        print("[*] Linear Padding Hastads Check Passed")
    else:
        print("[X] Linear Padding Hastads Check FAILED")
    
    print("[#] Coppersmith Shortpad Attack Check")
    print("This check passes if flag{This_Msg_Is_2_1337} is in the output")
    FranklinReiterSage.testCoppersmithShortPadAttack()

main()
