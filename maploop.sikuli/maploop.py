for i in range(1, 100):
    print "Round %d" % i
    click("1419126965852.png")
    
    bots = "1419127025186.png"
    try:
        # If we can't find this, someone
        # probably joined our game.
        wait(bots, 15)
        click(bots)
    except:
        print "Warning: Not playing with bots."

    try:
        weaponSelect = "1419127084335.png"
        wait(weaponSelect, 30)
        click(weaponSelect)
            
        weapon = "1419127238009.png"
        click(weapon)
    except:
        print "Warning: Not our turn?"
    
    
    # Fire the weapon
    # "1419128394594.png""1419133463444.png""1419133473651.png" 
    left = "1419136051796.png"
    right = "1419133632083.png"
    space = "1419127409411.png"
    if exists(left):
        dragDrop(left, space)
    elif exists(right):
        dragDrop(right, space)
    else:
        # If we can't find an image to shoot,
        # just let the other player go
        # rather than crashing.
        print "Warning: Could not shoot."
    
    back = "1419127342958.png"
    # This one can take a while
    wait(back, 120)
    
    # sikuli finds this button while it's still
    # disabled, wait a bit for it to become
    # enabled before clicking.
    import time
    time.sleep(3)
    click(back)
