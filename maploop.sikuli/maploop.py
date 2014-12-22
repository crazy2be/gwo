import time

i = 0
prevNow = time.time()
while True:
    i += 1
    if i > 1:
        now = time.time()
        print " Took %d seconds" % (now-prevNow)
        prevNow = now
    print ("Round %d..." % i),

    try:
        setup = "1419142568536.png"
        wait(setup, 10)
        click(setup)
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
        time.sleep(1.5)
        keyUp(Key.LEFT)
    except:
        print "Warning: Not our turn?"
        
    try:
        back = Pattern("1419142726522.png").similar(0.90)
        # This one can take a while
        wait(back, 60*2)
        # sikuli finds this button while it's still
        # disabled, wait a bit for it to become
        # enabled before clicking.
        time.sleep(3)
        click(back)
    except:
        print "Warning: Could not go back!"
