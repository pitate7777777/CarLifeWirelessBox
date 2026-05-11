.class public Le/c/a/a/v/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Le/c/a/a/v/c0;


# direct methods
.method public constructor <init>(Le/c/a/a/v/c0;I)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/b0;->f:Le/c/a/a/v/c0;

    iput p2, p0, Le/c/a/a/v/b0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/c/a/a/v/b0;->e:I

    iget-object v0, p0, Le/c/a/a/v/b0;->f:Le/c/a/a/v/c0;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 2
    iget-object v0, v0, Le/c/a/a/v/g;->d0:Le/c/a/a/v/s;

    .line 3
    iget v0, v0, Le/c/a/a/v/s;->f:I

    invoke-static {p1, v0}, Le/c/a/a/v/s;->d(II)Le/c/a/a/v/s;

    move-result-object p1

    iget-object v0, p0, Le/c/a/a/v/b0;->f:Le/c/a/a/v/c0;

    .line 4
    iget-object v0, v0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 5
    iget-object v0, v0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    .line 6
    iget-object v1, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    invoke-virtual {p1, v1}, Le/c/a/a/v/s;->b(Le/c/a/a/v/s;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object p1, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Le/c/a/a/v/a;->f:Le/c/a/a/v/s;

    invoke-virtual {p1, v1}, Le/c/a/a/v/s;->b(Le/c/a/a/v/s;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object p1, v0, Le/c/a/a/v/a;->f:Le/c/a/a/v/s;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Le/c/a/a/v/b0;->f:Le/c/a/a/v/c0;

    .line 8
    iget-object v0, v0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 9
    invoke-virtual {v0, p1}, Le/c/a/a/v/g;->I0(Le/c/a/a/v/s;)V

    iget-object p1, p0, Le/c/a/a/v/b0;->f:Le/c/a/a/v/c0;

    .line 10
    iget-object p1, p1, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 11
    sget-object v0, Le/c/a/a/v/g$e;->e:Le/c/a/a/v/g$e;

    invoke-virtual {p1, v0}, Le/c/a/a/v/g;->J0(Le/c/a/a/v/g$e;)V

    return-void
.end method
