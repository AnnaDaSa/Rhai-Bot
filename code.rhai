for w in 0..8{
    if worker(w).x == 0 {
        let r = (rand() % 3).abs();
        switch r {
          0 = worker(w).move_up(),
          1 = worker(w).move_down(),
          2 = worker(w).move_right(),
        }
    }
    else if worker(w).y == 0 {
        let r = (rand() % 3).abs();
        switch r {
          0 = worker(w).move_up(),
          1 = worker(w).move_left(),
          2 = worker(w).move_right(),
        }
    }
    else if worker(w).y == 39 {
        let r = (rand() % 3).abs();
        switch r {
          0 = worker(w).move_left(),
          1 = worker(w).move_down(),
          2 = worker(w).move_right(),
        }
    }
    else if worker(w).x == 39 {
        let r = (rand() % 3).abs();
        switch r {
          0 = worker(w).move_up(),
          1 = worker(w).move_down(),
          2 = worker(w).move_left(),
        }
    }
    else {
      let r = (rand() % 4).abs();
          if r==0 { 
            if map[worker(w).x][worker(w).y+1] != worker(w).color{
                worker(w).move_up();
            }
            else if map[worker(w).x][worker(w).y-1] != worker(w).color{
                worker(w).move_down();
            }
            else if map[worker(w).x+1][worker(w).y] != worker(w).color{
                worker(w).move_right();
            }
            else if map[worker(w).x-1][worker(w).y] != worker(w).color{
                worker(w).move_left();
            }
            else{worker(w).move_up();}
          }
          if r==1 { 
            if map[worker(w).x][worker(w).y-1] != worker(w).color{
                worker(w).move_down();
            }
            else if map[worker(w).x][worker(w).y+1] != worker(w).color{
                worker(w).move_right();
            }
            else if map[worker(w).x+1][worker(w).y] != worker(w).color{
                worker(w).move_up();
            }
            else if map[worker(w).x-1][worker(w).y] != worker(w).color{
                worker(w).move_left();
            }
            else{worker(w).move_down();}
          }
          if r==2 { 
            if map[worker(w).x-1][worker(w).y] != worker(w).color{
                worker(w).move_left();
            }
            else if map[worker(w).x][worker(w).y-1] != worker(w).color{
                worker(w).move_down();
            }
            else if map[worker(w).x+1][worker(w).y] != worker(w).color{
                worker(w).move_right();
            }
            else if map[worker(w).x][worker(w).y+1] != worker(w).color{
                worker(w).move_up();
            }
            else{worker(w).move_left();}
          }
          if r==3 { 
            if map[worker(w).x+1][worker(w).y] != worker(w).color{
                worker(w).move_right();
            }
            else if map[worker(w).x][worker(w).y-1] != worker(w).color{
                worker(w).move_down();
            }
            else if map[worker(w).x][worker(w).y+1] != worker(w).color{
                worker(w).move_left();
            }
            else if map[worker(w).x-1][worker(w).y] != worker(w).color{
                worker(w).move_up();
            }
            else{worker(w).move_right();}
          }
        }
    }