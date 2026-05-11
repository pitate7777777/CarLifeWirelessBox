.class public Le/c/a/a/v/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Le/c/a/a/v/g;


# direct methods
.method public constructor <init>(Le/c/a/a/v/g;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/k;->e:Le/c/a/a/v/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/c/a/a/v/k;->e:Le/c/a/a/v/g;

    .line 1
    sget-object v0, Le/c/a/a/v/g$e;->e:Le/c/a/a/v/g$e;

    sget-object v1, Le/c/a/a/v/g$e;->f:Le/c/a/a/v/g$e;

    iget-object v2, p1, Le/c/a/a/v/g;->e0:Le/c/a/a/v/g$e;

    if-ne v2, v1, :cond_0

    invoke-virtual {p1, v0}, Le/c/a/a/v/g;->J0(Le/c/a/a/v/g$e;)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    invoke-virtual {p1, v1}, Le/c/a/a/v/g;->J0(Le/c/a/a/v/g$e;)V

    :cond_1
    :goto_0
    return-void
.end method
