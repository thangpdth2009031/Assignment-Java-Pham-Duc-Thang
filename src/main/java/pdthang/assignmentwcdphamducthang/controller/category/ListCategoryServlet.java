package pdthang.assignmentwcdphamducthang.controller.category;

import pdthang.assignmentwcdphamducthang.model.category.CategoryModel;
import pdthang.assignmentwcdphamducthang.model.category.MySqlCategoryModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ListCategoryServlet extends HttpServlet {
    private CategoryModel categoryModel;

    public ListCategoryServlet() {
        this.categoryModel = new MySqlCategoryModel();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("categories", categoryModel.findAll());
        req.getRequestDispatcher("/admin/view/category/list.jsp").forward(req, resp);
    }
}
