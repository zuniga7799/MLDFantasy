import React from 'react';
import { Nav, NavLink, Bars, NavMenu, NavBtn, NavBtnLink } from './NavBarElements'

const HomeNav = () => {
  return (
    <>
      <Nav>
        <NavLink to="/">
          <h1>League Home</h1>
        </NavLink>
        <Bars />
        <NavMenu>
          <NavLink to="/myteam" activestyle="true">
            My Team
          </NavLink>
          <NavLink to="/players" activestyle="true">
            Players
          </NavLink>
          <NavLink to="/standings" activestyle="true">
            Standings
          </NavLink>
          <NavLink to="/scoreboard" activestyle="true">
            Scoreboard
          </NavLink>
        </NavMenu>
        <NavBtn>
          <NavBtnLink to='/signin'>Sign In</NavBtnLink>
        </NavBtn>
      </Nav>
    </>
  )
}



export default HomeNav;