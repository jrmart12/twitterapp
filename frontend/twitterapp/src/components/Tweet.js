import React from 'react'

const Tweet = ({tweet}) =>
    <div className= "twitter-tweet" key={tweet.id}>
        <h4 className= "twitter-tweet-p">{tweet.body}</h4>
        <p className= "twitter-tweet-a">-{tweet.username} </p>
        <br></br>
    </div> 
    //forzozamente se tiene que tenes un div entre elementos de html, porque sino react da error

export default Tweet