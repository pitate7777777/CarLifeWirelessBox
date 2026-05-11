.class public final synthetic Le/b/b/n/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Le/b/b/n/b;


# direct methods
.method public synthetic constructor <init>(Le/b/b/n/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/b/n/a;->e:Le/b/b/n/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/b/b/n/a;->e:Le/b/b/n/b;

    invoke-static {v0}, Le/b/b/n/b;->h(Le/b/b/n/b;)V

    return-void
.end method
