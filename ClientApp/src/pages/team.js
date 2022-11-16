import React, { Component } from 'react'
import { Table } from 'react-bootstrap'
import { Roster } from '../components/Roster/roster';
import { useParams } from 'react-router-dom';

class Team extends Component {
    _isMounted = false;

    constructor(props) {
        super(props);
        this.state = { players: [], teamId: 1}
        
        this.dummyData = {
            PlayerId: 1,
            PlayerName: "Aaron Judge",
            Position: "RF",
            Age: 29,
            Salary: 18,
            Contract: 2026,
            PPG: 2.96,
            Team: "NYY",
            Owner: "SMYT"
        }
    }


    refreshList() {
        fetch(process.env.REACT_APP_API + 'team/' + this.state.teamId)
            .then(response => response.json())
            .then(data => {
                if (this._isMounted) {
                    this.setState({
                        players: data,
                    });
                } 
            });
      }

    componentDidMount() {
        this._isMounted = true;
        const { id } = this.props.params;
        this.setState({
            teamId: id
        })

        this.refreshList();
    }

    componentWillUnmount() {
        this._isMounted = false;
    }
    componentDidUpdate() {
        //this.refreshList();
    }

    render() {
        let { players }  = this.state || this.dummyData;
        const { id } = this.props.match.params;
        return (
            <>
                <div>{id}</div>
            <div>
                <Table className="mt-4" striped bordered hover size="sm">
                    <thead>
                        <tr>
                            <th>PlayerName</th>
                            <th>Team</th>
                        </tr>
                    </thead>
                    <tbody>
                        {players.map(player =>
                            <tr key={player.PlayerId}>
                                <td>{player.PlayerName}</td>
                                <td>{player.Team}</td>
                            </tr>)}
                    </tbody>
                </Table>
            </div>
            </>
    );
    }
}
export default Team;
    /*_isMounted = false;
    constructor(props) {
        super(props);
        this.state = {
        }

    }
        render() {
        
            return (
                <>
                    <div className="team-info">
                        <div className="team-name">My Team Name</div>
                        <div className="team-record">0-0 First in Division</div>
                    </div>
                    <div
                        style={{
                            display: 'flex',
                            justifyContent: 'center',
                            alignItems: 'center',
                            height: '90vh',
                            border: 'solid',
                            borderRadius: '10rem',
                            margin: '50px'
                        }}
                    >
                        <Roster />
                    </div>
                </>
            )
    }*/
    


