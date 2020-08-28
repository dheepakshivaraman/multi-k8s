import React from 'react';
import { Link} from 'react-router-dom';

export default () => {
    return (
        <div>
            Some other page.
            <Link to="/">Go to Home</Link>
        </div>
    );
};