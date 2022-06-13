package pdthang.assignmentwcdphamducthang.controller.food;

import pdthang.assignmentwcdphamducthang.entity.Food;
import pdthang.assignmentwcdphamducthang.model.food.FoodModel;
import pdthang.assignmentwcdphamducthang.model.food.MySqlFoodModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListFoodServlet extends HttpServlet {
    private FoodModel foodModel;

    public ListFoodServlet() {
        this.foodModel = new MySqlFoodModel();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Food> foods = foodModel.findAll();
        req.setAttribute("foods", foods);
        req.getRequestDispatcher("/admin/view/food/list.jsp").forward(req, resp);
    }
}
