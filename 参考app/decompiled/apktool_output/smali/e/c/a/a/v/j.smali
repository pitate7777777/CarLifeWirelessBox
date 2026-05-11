.class public Le/c/a/a/v/j;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source ""


# instance fields
.field public final synthetic a:Le/c/a/a/v/v;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Le/c/a/a/v/g;


# direct methods
.method public constructor <init>(Le/c/a/a/v/g;Le/c/a/a/v/v;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/j;->c:Le/c/a/a/v/g;

    iput-object p2, p0, Le/c/a/a/v/j;->a:Le/c/a/a/v/v;

    iput-object p3, p0, Le/c/a/a/v/j;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Le/c/a/a/v/j;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p1, p0, Le/c/a/a/v/j;->c:Le/c/a/a/v/g;

    invoke-virtual {p1}, Le/c/a/a/v/g;->G0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->l1()I

    move-result p1

    :goto_0
    iget-object p2, p0, Le/c/a/a/v/j;->c:Le/c/a/a/v/g;

    iget-object p3, p0, Le/c/a/a/v/j;->a:Le/c/a/a/v/v;

    invoke-virtual {p3, p1}, Le/c/a/a/v/v;->g(I)Le/c/a/a/v/s;

    move-result-object p3

    .line 1
    iput-object p3, p2, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    .line 2
    iget-object p2, p0, Le/c/a/a/v/j;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Le/c/a/a/v/j;->a:Le/c/a/a/v/v;

    .line 3
    iget-object v0, p3, Le/c/a/a/v/v;->d:Le/c/a/a/v/a;

    .line 4
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 5
    invoke-virtual {v0, p1}, Le/c/a/a/v/s;->r(I)Le/c/a/a/v/s;

    move-result-object p1

    .line 6
    iget-object p3, p3, Le/c/a/a/v/v;->c:Landroid/content/Context;

    invoke-virtual {p1, p3}, Le/c/a/a/v/s;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
