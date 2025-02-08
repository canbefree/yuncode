import { type RouteConfig, index, route } from "@react-router/dev/routes";
import { Router } from "react-router";


export default [
    // index("routes/home.tsx"),
    route("/foo","./routes/home.tsx")
] satisfies RouteConfig;
