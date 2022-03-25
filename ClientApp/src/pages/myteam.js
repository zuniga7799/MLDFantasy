import React from 'react'
import { Roster } from '../components/Roster/roster';

const MyTeam = () => {
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
                <Roster/>
            </div>
            </>
    )
}

export default MyTeam; 