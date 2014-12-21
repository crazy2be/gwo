import time

i = 0
while True:
    i += 1
    print "Round %d" % i

    try:
        click("1419142568536.png")
    except:
        print "Warning: Could not setup game!"
    
    bots = "1419142606501.png"
    try:
        # If we can't find this, someone
        # probably joined our game. Should only
        # take 10 seconds, but sometimes things
        # lag a lot.
        wait(bots, 20)
        click(bots)
    except:
        print "Warning: Not playing with bots."

    try:
        weaponSelect = "1419143335114.png"
        wait(weaponSelect, 60)
        click(weaponSelect)
            
        weapon = "1419142807236.png"
        click(weapon)
        
        keyDown(Key.LEFT)
        time.sleep(1.0)
        keyUp(Key.LEFT)
    except:
        print "Warning: Not our turn?"
        
    try:
        back = Pattern("1419142726522.png").similar(0.9)
        # This one can take a while
        wait(back, 60*4)
        # sikuli finds this button while it's still
        # disabled, wait a bit for it to become
        # enabled before clicking.
        time.sleep(3)
        click(back)
    except:
        print "Warning: Could not go back!"
