import React from 'react'

const Tweet = ({tweet}) =>
    <div className= "twitter-tweet" key={tweet.id}>
            <p >{tweet.username}</p>
        <h4 >{tweet.body}</h4>
        <br></br>
    </div> 
export default Tweet