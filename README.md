# iOSTroubles
目的是将iOS开发中遇到问题进行汇总，总结问题，温故知新



- 更新Xcode12后，运行真机/模拟器项目的时候，长时间卡住大约1分钟，解决方案[请看这](https://github.com/BaiHan1989/iOSTroubles/wiki/Xcode12-%E7%9C%9F%E6%9C%BA-%E6%A8%A1%E6%8B%9F%E5%99%A8%E8%BF%90%E8%A1%8C%E9%A1%B9%E7%9B%AE%E5%8D%A1%E5%9C%A8%E5%90%AF%E5%8A%A8%E9%A1%B5%E9%9D%A2)

- 设置TabBar选中以及未选中颜色

- 在国内的App中，大部分情况是当我们push到二级页面的时候，要隐藏TabBar，在iOS14中如果你push多个页面入栈，再通过`popToRootViewController`回到根控制器的时候，会发现1级页面的TabBar消失了。

以上2点的解决方案：[请看这](https://juejin.im/post/6873745315275472910)