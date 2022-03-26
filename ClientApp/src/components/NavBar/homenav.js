import React, {Component, useState, setState} from 'react';
import { NavDropdown, Navbar, NavItem} from 'react-bootstrap';
import { Nav, NavLink, Bars, NavMenu, NavBtn, NavBtnLink } from './NavBarElements'
import Dropdown from '../Dropdown';

export class HomeNav extends Component{
  constructor(props) {
    super(props);
    this.state = {
      showDropdown: true,
      menutItemsDisplay: 'none'
    }

    this.setShow = this.setShow.bind(this);
  }

  setShow(){
    this.setState({
      showDropdown: !this.state.showDropdown
    });
    if (this.state.showDropdown == true)
    {
      this.setState({
        menutItemsDisplay: 'block'
      });  
    }
    else
    {
      this.setState({
        menutItemsDisplay: 'none'
      }); 
    }
    window.console.log("show:" + this.state.showDropdown);
  }

  componentDidMount() {
    
  }

  render() {
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
            <NavItem>
            <NavDropdown
              title="Teams"
              id="collasible-nav-dropdown"
                onClick={this.setShow}
                show={this.state.showDropdown}
            >
                <NavDropdown.Item style={{ display:this.state.menutItemsDisplay }}>Team 1</NavDropdown.Item>
            </NavDropdown>
            </NavItem>
            
          </NavMenu>
          <NavBtn>
            <NavBtnLink to='/signin'>Sign In</NavBtnLink>
          </NavBtn>
        </Nav>
      </>
    )
  }
  
}


