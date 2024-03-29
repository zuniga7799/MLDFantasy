import React, {Component} from 'react'
import { Table } from 'react-bootstrap'
import { useParams } from 'react-router-dom';
import { Team } from '../../pages/team.js';

function withParams(Component) {
    return props => <Component {...props} params={useParams()} />;
}
export class RosterItem extends Component {
    _isMounted = false;
    
   

    constructor(props) {
        super(props);
        this.state = { players: [], teamId: id}
        
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
        let teamId = this.state.teamId
        fetch(process.env.REACT_APP_API + 'team/' + teamId)
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
        this.refreshList();

        let { id } = this.props.params;
        this.state.teamId = id;
    }

    componentWillUnmount() {
        this._isMounted = false;
    }
    componentDidUpdate() {
        //this.refreshList();
    }

    render() {
        let { players }  = this.state || this.dummyData;
        
        return (
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
    );
    }
}
export default withParams(RosterItem);