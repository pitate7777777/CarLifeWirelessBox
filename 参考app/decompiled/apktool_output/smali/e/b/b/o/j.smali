.class public final Le/b/b/o/j;
.super Le/b/b/o/g;
.source ""


# static fields
.field public static h0:Le/b/b/o/j;


# instance fields
.field public d0:Landroid/widget/ImageButton;

.field public e0:Landroid/widget/TextView;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/b/b/o/g;-><init>()V

    return-void
.end method

.method public static final E0(Le/b/b/o/j;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Le/b/b/o/g;->c0:Le/b/b/o/h;

    if-eqz p0, :cond_0

    invoke-static {}, Le/b/b/o/n;->E0()Le/b/b/o/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    :cond_0
    return-void
.end method

.method public static final F0(Landroid/view/View;)V
    .locals 1

    sget-object p0, Le/b/b/o/g;->c0:Le/b/b/o/h;

    .line 1
    sget-object v0, Le/b/b/o/f;->f0:Le/b/b/o/f;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/f;

    invoke-direct {v0}, Le/b/b/o/f;-><init>()V

    sput-object v0, Le/b/b/o/f;->f0:Le/b/b/o/f;

    :cond_0
    sget-object v0, Le/b/b/o/f;->f0:Le/b/b/o/f;

    .line 2
    invoke-virtual {p0, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    return-void
.end method

.method public static final G0(Le/b/b/o/j;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p0

    check-cast p0, Le/b/a/a/p/h;

    const/4 p1, 0x5

    goto :goto_0

    :pswitch_1
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p0

    check-cast p0, Le/b/a/a/p/h;

    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Le/b/a/a/p/h;->v(I)V

    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object p0

    const-string p2, "CarlifeConnectType"

    invoke-virtual {p0, p2, p1}, Le/b/b/s/e;->b(Ljava/lang/String;I)Z

    goto :goto_1

    .line 1
    :pswitch_2
    new-instance p1, Le/d/a/a;

    invoke-direct {p1, p0}, Le/d/a/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/d/a/a;->a([Ljava/lang/String;)Le/d/a/j/i;

    move-result-object p1

    sget-object p2, Le/b/b/o/c;->a:Le/b/b/o/c;

    .line 3
    iput-object p2, p1, Le/d/a/j/i;->q:Le/d/a/g/a;

    .line 4
    new-instance p2, Le/b/b/o/d;

    invoke-direct {p2, p0}, Le/b/b/o/d;-><init>(Le/b/b/o/j;)V

    invoke-virtual {p1, p2}, Le/d/a/j/i;->e(Le/d/a/g/d;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09000f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final H0(Le/d/a/j/c;Ljava/util/List;)V
    .locals 3

    const-string v0, "scope"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u6253\u5f00\u6743\u9650"

    const-string v1, "\u786e\u5b9a"

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0, v1, v2}, Le/d/a/j/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final I0(Le/b/b/o/j;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deniedList"

    invoke-static {p3, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s0()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u6743\u9650\u672a\u6253\u5f00: "

    invoke-static {p1, p3}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p0

    check-cast p0, Le/b/a/a/p/h;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Le/b/a/a/p/h;->v(I)V

    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object p0

    const-string p2, "CarlifeConnectType"

    invoke-virtual {p0, p2, p1}, Le/b/b/s/e;->b(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Le/b/b/o/g;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "onCreateView"

    aput-object p3, p1, p2

    const-string p2, "HelpAndroidAOAFragment"

    const-string p3, "tag"

    .line 1
    invoke-static {p2, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "args"

    invoke-static {p1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p3, v0, p2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p1, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0035

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090112

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Le/b/b/o/j;->d0:Landroid/widget/ImageButton;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    new-instance p2, Le/b/b/o/a;

    invoke-direct {p2, p0}, Le/b/b/o/a;-><init>(Le/b/b/o/j;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090247

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/b/b/o/j;->e0:Landroid/widget/TextView;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const p3, 0x7f0f0075

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->x(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p3, 0x7f09004e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/b/b/o/j;->f0:Landroid/widget/TextView;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const p2, 0x7f0f0074

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->x(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p2, 0x7f090104

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/b/b/o/j;->g0:Landroid/view/View;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    sget-object p2, Le/b/b/o/b;->e:Le/b/b/o/b;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R()V
    .locals 4

    invoke-super {p0}, Le/b/b/o/g;->R()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "HelpAndroidAOAFragment"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public j0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Le/b/b/k;->_connect_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/widget/RadioGroup;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0}, Le/b/a/a/c;->p0()I

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f090010

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f09000f

    goto :goto_1

    :cond_2
    const v2, 0x7f090011

    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-nez p1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    sget p2, Le/b/b/k;->_connect_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_2
    check-cast p2, Landroid/widget/RadioGroup;

    new-instance p1, Le/b/b/o/e;

    invoke-direct {p1, p0}, Le/b/b/o/e;-><init>(Le/b/b/o/j;)V

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
