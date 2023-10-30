<?
    include('connect.php');
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Халиуллина</title>
</head>

<body>
    <main>
        <div class="container">
            <h2>Количество товаров в каждой категории</h2>
            <table>
                <thead>
                    <th>id</th>
                    <th>name</th>
                    <th>quantity</th>
                </thead>
                <tbody>
                    <?
                        $sql = "SELECT categories.id, categories.name, COUNT(*) AS quantity FROM products JOIN categories ON products.category = categories.id GROUP BY category";
                        $categories = $connect->query($sql);

                        foreach($categories as $category) {?>
                            <tr>
                                <td><?=$category['id']?></td>
                                <td><?=$category['name']?></td>
                                <td><?=$category['quantity']?></td>
                            </tr>
                        <?}
                    ?>
                </tbody>
            </table>
            <h2>Список товаров с названиями категорий</h2>
            <table>
                <thead>
                    <th>id</th>
                    <th>name</th>
                    <th>price</th>
                    <th>weigth</th>
                    <th>category</th>
                </thead>
                <tbody>
                    <?
                        $sql = "SELECT products.id AS id, products.name AS name, price, weigth, categories.name AS category FROM products JOIN categories ON products.category = categories.id ORDER BY products.id";
                        $products = $connect->query($sql);

                        foreach($products as $product) {?>
                            <tr>
                                <td><?=$product['id']?></td>
                                <td><?=$product['name']?></td>
                                <td><?=number_format($product['price'], 0, '.', ' ')?> ₽</td>
                                <td><?=$product['weigth']?> kg</td>
                                <td><?=$product['category']?></td>
                            </tr>
                        <?}
                    ?>
                </tbody>
            </table>
            <h2>Средняя стоимость товаров</h2>
            <table>
                <thead>
                    <th>average price</th>
                </thead>
                <tbody>
                    <?
                        $sql = "SELECT AVG(price) as averagePrice FROM products";
                        $averagePrice = $connect->query($sql)->fetch();
                    ?>
                    <tr>
                        <td><?=number_format($averagePrice['averagePrice'], 2, '.', ' ')?> ₽</td>
                    </tr>
                </tbody>
            </table>
            <h2>Общий вес товаров</h2>
            <table>
                <thead>
                    <th>summary weigth</th>
                </thead>
                <tbody>
                    <?
                        $sql = "SELECT SUM(weigth) as sumWeigth FROM products";
                        $sumWeigth = $connect->query($sql)->fetch();
                    ?>
                    <tr>
                        <td><?=$sumWeigth['sumWeigth']?> kg</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </main>
</body>

</html>