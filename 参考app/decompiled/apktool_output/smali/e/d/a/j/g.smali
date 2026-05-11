.class public final Le/d/a/j/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Le/d/a/i/c;

.field public final synthetic f:Le/d/a/j/b;


# direct methods
.method public constructor <init>(Le/d/a/i/c;Le/d/a/j/b;)V
    .locals 0

    iput-object p1, p0, Le/d/a/j/g;->e:Le/d/a/i/c;

    iput-object p2, p0, Le/d/a/j/g;->f:Le/d/a/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/d/a/j/g;->e:Le/d/a/i/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Le/d/a/j/g;->f:Le/d/a/j/b;

    invoke-interface {p1}, Le/d/a/j/b;->b()V

    return-void
.end method
