
package Dama_in_javafx;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.Group;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.paint.Color;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

/**
 *
 * @author Steven Zaayter
 */


public class Dama_In_JavaFx extends Application {
    
    @Override
    public void start(Stage primaryStage) {
        int width = 500;
        int height = 500;
        Canvas canvas = new Canvas(width,height);
        Group root = new Group();
        root.getChildren().add(canvas);
        Scene scene = new Scene(root,width,height);
        primaryStage.setTitle("Dama");
        primaryStage.setScene(scene);
        primaryStage.show();
        GraphicsContext gc = new Canvas(width,height).getGraphicsContext2D();
        
        gc.setFill(Color.rgb(0, 0, 0));
        gc.fillRect(50, 0, 50, 50);
        for(int j=0;j<=height;j++){
        for(int i=0;i<= width;i++) {
                gc.setFill(Color.rgb(0,0,0));
                gc.fillRect(i*50, j, 50, 50);
        }
        }
                gc.setFill(Color.rgb(255,255,255));
                gc.fillRect(50, 50, 50, 50);
}
    public static void main(String[] args) {
        launch(args);
    }
}


