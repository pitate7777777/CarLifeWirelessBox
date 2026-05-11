.class public Le/c/a/a/i0/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Le/c/a/a/i0/h;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/h;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/k;->a:Le/c/a/a/i0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Le/c/a/a/i0/k;->a:Le/c/a/a/i0/h;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Le/c/a/a/i0/h;->i:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Le/c/a/a/i0/h;->k:J

    .line 4
    iget-object v0, p0, Le/c/a/a/i0/k;->a:Le/c/a/a/i0/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/c/a/a/i0/h;->g(Le/c/a/a/i0/h;Z)V

    return-void
.end method
