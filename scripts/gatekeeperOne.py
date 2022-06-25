import brownie
from brownie import accounts, Level13, history


def main():
#    accounts.load("testacc")
#    c = Level13.deploy({"from": accounts[-1]})
    c = Level13[0]
    key = "0x100000000000ae16"
    # print(c.gateThree_1(key, {"from": accounts[-1]}))
    # print(c.gateThree_2(key, {"from": accounts[-1]}))
    # print(c.gateThree_3(key, {"from": accounts[-1]}))
    # print(c.lhs(key))
    #require( uint32(uint64(_gateKey)) == uint16(uint64(_gatekey)) )
    #require( uint32(uint64(_gateKey)) != uint64(_gateKey) )
    #require( uint32(uint64(_gateKey)) == uint16(tx.origin) )

    #require( uint32(uint64(_gateKey)) == uint16(uint64(_gatekey)) )
    #require( uint32(uint64(_gateKey)) != uint64(_gateKey) )
    #require( uint32(uint64(_gateKey)) == 0xae16 )
    for i in range(10000):
        print(i)
        try:
            c._enter(key, "0x3c80Eb0C599eeE6f286Bf90789818B6C941b6FB1", {"from": accounts[0], "gas_limit": (i + (8191 * 10))})
            break
        except ValueError:
            pass
            


    # goOn = True
    # amount = 100
    # start = 0
    # while goOn:
    #     print(start)
    #     for i in range(amount):
    #         c.crack(hex(start), {"from": accounts[-1]})
    #         if "KEY" in history[-1].events.keys():
    #             keys = [history[-1].events["KEY"]["key"]]
    #             for k in keys:
    #                 g1 = c.gateThree_1(k);
    #                 g2 = c.gateThree_2(k)
    #                 g3 = c.gateThree_3(k)
    #                 if (g1 == True) and (g2 == True) and (g3 == True):
    #                     print(f"the key is {k}")
    #                     goOn = False
    #                     break
    #             #        print(history[-1].events)
    #         start += 1000
    # for k in keys:
    #     print(k)
    # keys = ["0x000000000000ae16", "0x000000000002ae16", "0x000000000003ae16", "0x000000000004ae16", "0x000000000005ae16", "0x000000000006ae16", "0x000000000007ae16", "0x000000000008ae16", "0x000000000009ae16", "0x00000000000aae16", "0x00000000000bae16", "0x00000000000cae16", "0x00000000000dae16", "0x00000000000eae16"]

#        print(g13)
#        print(g1)
#        print(g2)
#        print(g3)
#0x000000000000ae16
#0x000000000002ae16
#0x000000000003ae16
#0x000000000004ae16
#0x000000000005ae16
#...
#0x000000000009ae16
#0x00000000000aae16
#...
#0x00000000000eae16
    
#...
#
#0x00000000000aae16
#...
#0x00000000000eae16
