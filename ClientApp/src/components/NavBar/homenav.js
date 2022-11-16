import React, {Component, useState, setState} from 'react';
import { NavDropdown, Navbar, NavItem} from 'react-bootstrap';
import { Nav, NavLink, Bars, NavMenu, NavBtn, NavBtnLink } from './NavBarElements'
import Team   from '../../pages/team.js'

export class HomeNav extends Component{
  _isMounted = false;

  constructor(props) {
    super(props);
    this.state = {
      showDropdown: true,
      menutItemsDisplay: 'none',
      teams: []
    }

    this.setShow = this.setShow.bind(this);
  }

  refreshList() {
    fetch(process.env.REACT_APP_API + 'team')
        .then(response => response.json())
        .then(data => {
            if (this._isMounted) {
                this.setState({
                    teams: data,
                });
            } 
        });
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
  }

  goToTeam(e) {
    
  }

  componentDidMount() {
        this._isMounted = true;
        this.refreshList();
    }

  componentWillUnmount() {
      this._isMounted = false;
  }

  render() {
    let { teams } = this.state;
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
            <NavDropdown
              title="Teams"
              onClick={this.setShow}
              show={this.state.showDropdown}
              className="teams-dropdown"
            >
                {teams.map(team =>
                  <NavDropdown.Item
                    href={"/team/" + team.TeamId}
                    element={<Team/>}
                    key={team.TeamId}
                    style={{ display: this.state.menutItemsDisplay }}
                    onClick={this.goToTeam}
                  >{team.TeamName}
                  </NavDropdown.Item>)}
            </NavDropdown>
            
          </NavMenu>
          <NavBtn>
            <NavBtnLink to='/signin'>Sign In</NavBtnLink>
          </NavBtn>
        </Nav>
      </>
    )
  }
  
}


