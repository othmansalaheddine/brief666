<!-- add new category -->
<div class="modal fade" id="addNewCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="categoryForm" action="dashboard.php" method="post"> 
                <div class="modal-body">
                    <div class="form-group">
                        <label for="categoryName">Category Name</label>
                        <input type="text" class="form-control" name="categoryName" id="categoryName" placeholder="Enter Category Name" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php 

require './tmp/connection.php';

if (isset($_POST['categoryName'])) {
    $categoryName = $_POST['categoryName'];
    $sql = "INSERT INTO category (categoryName) VALUES ('$categoryName')";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo '<script>alert("Category Added Successfully")</script>';
        echo '<script>window.location.href="dashboard.php"</script>';
    } else {
        echo '<script>alert("Category Not Added")</script>';
        echo '<script>window.location.href="dashboard.php"</script>';
    }
}




?>
