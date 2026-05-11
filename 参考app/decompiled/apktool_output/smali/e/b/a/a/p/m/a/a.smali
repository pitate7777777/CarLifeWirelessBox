.class public final synthetic Le/b/a/a/p/m/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Le/b/a/a/p/m/a/c;


# direct methods
.method public synthetic constructor <init>(Le/b/a/a/p/m/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/m/a/a;->e:Le/b/a/a/p/m/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/m/a/a;->e:Le/b/a/a/p/m/a/c;

    invoke-static {v0}, Le/b/a/a/p/m/a/c;->f(Le/b/a/a/p/m/a/c;)V

    return-void
.end method
