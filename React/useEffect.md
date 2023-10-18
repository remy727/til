# Avoid running method on the first render when using `useEffect`

```js
import { useRef } from "react";

// ...

const firstUpdate = useRef(true);

useEffect(() => {
  if (firstUpdate.current) {
    firstUpdate.current = false;
    return;
  }

  handleUserChange();
}, [user]);
```
