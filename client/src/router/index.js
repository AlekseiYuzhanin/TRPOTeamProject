import { createRouter, createWebHistory } from "vue-router";
import HomePage from "../pages/HomePage.vue";
import StudentsList from "../pages/StudentsList.vue"
import StudentMarks from "../pages/StudentMarks.vue"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "home",
      component: HomePage,
    },
    {
      path: "/groups/:id",
      name: "StudentsList",
      component: StudentsList
    },
    {
      path: "/student",
      name: "student",
      component: StudentMarks
    }
  ],
});

export default router;
