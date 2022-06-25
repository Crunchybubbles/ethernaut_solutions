# @version 0.3.3

interface Telephone:
    def changeOwner(_owner: address): nonpayable

@external
def change_owner(instance: address, _newOwner: address):
    Telephone(instance).changeOwner(_newOwner)

