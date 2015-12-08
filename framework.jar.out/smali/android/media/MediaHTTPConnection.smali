.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final VERBOSE:Z


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mNativeContext:J

.field private mProxyIP:Ljava/lang/String;

.field private mProxyPort:I

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 427
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    .line 429
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 51
    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 52
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    .line 55
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 56
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 57
    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 58
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 60
    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 61
    iput-boolean v2, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 68
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 72
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    .line 73
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "pairs":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 128
    .local v6, "pair":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "colonPos":I
    if-ltz v1, :cond_0

    .line 130
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 134
    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "colonPos":I
    .end local v6    # "pair":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 104
    const-string v2, "MediaHTTPConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterOutInternalHeaders: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "android-allow-cross-domain-redirect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 108
    iget-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 120
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 109
    :cond_2
    const-string/jumbo v2, "use-proxy"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const-string v2, "MediaHTTPConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterOutInternalHeaders use-proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "colonPos":I
    if-lez v0, :cond_0

    .line 113
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    .line 114
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    .line 115
    const-string v1, "MediaHTTPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sta-proxy-ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    if-nez p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    const-string v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 176
    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native native_init()V
.end method

.method private final native native_readAt(JI)I
.end method

.method private final native native_setup()V
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 97
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private readAt(J[BI)I
    .locals 11
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    .prologue
    const/4 v4, -0x1

    const/16 v3, -0x3f2

    .line 335
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 338
    .local v2, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 341
    :try_start_0
    iget-wide v6, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    cmp-long v5, p1, v6

    if-eqz v5, :cond_0

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    .line 345
    :cond_0
    iget-object v5, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, p3, v6, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 347
    .local v1, "n":I
    if-ne v1, v4, :cond_1

    .line 350
    const/4 v1, 0x0

    .line 353
    :cond_1
    iget-wide v6, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 379
    .end local v1    # "n":I
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/net/ProtocolException;
    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 362
    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/net/ProtocolException;
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/net/NoRouteToHostException;
    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 365
    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/net/NoRouteToHostException;
    :catch_2
    move-exception v0

    .line 367
    .local v0, "e":Ljava/net/UnknownServiceException;
    const-string v4, "MediaHTTPConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readAt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 368
    goto/16 :goto_0

    .line 369
    .end local v0    # "e":Ljava/net/UnknownServiceException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v4

    .line 373
    goto/16 :goto_0

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v4

    .line 379
    goto/16 :goto_0
.end method

.method private seekTo(J)V
    .locals 25
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 188
    const/4 v13, 0x0

    .line 190
    .local v13, "redirectCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v19, v0

    .line 193
    .local v19, "url":Ljava/net/URL;
    invoke-static/range {v19 .. v19}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v11

    .line 197
    .local v11, "noProxy":Z
    :cond_0
    :goto_0
    const-string v20, "MediaHTTPConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "proxy "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " port "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 199
    new-instance v17, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mProxyIP:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaHTTPConnection;->mProxyPort:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 200
    .local v17, "socketAddr":Ljava/net/SocketAddress;
    new-instance v12, Ljava/net/Proxy;

    sget-object v20, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 201
    .local v12, "proxy":Ljava/net/Proxy;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v20

    check-cast v20, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 202
    const-string v20, "MediaHTTPConnection"

    const-string v21, "connection initialized with proxy"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v12    # "proxy":Ljava/net/Proxy;
    .end local v17    # "socketAddr":Ljava/net/SocketAddress;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 216
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 319
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "noProxy":Z
    .end local v19    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 320
    .local v5, "e":Ljava/io/IOException;
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 321
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 322
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 323
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 325
    throw v5

    .line 204
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v11    # "noProxy":Z
    .restart local v19    # "url":Ljava/net/URL;
    :cond_1
    if-eqz v11, :cond_2

    .line 205
    :try_start_1
    sget-object v20, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v19 .. v20}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v20

    check-cast v20, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    check-cast v20, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 221
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v20, p1, v20

    if-lez v20, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    const-string v21, "Range"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bytes="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 227
    .local v14, "response":I
    const/16 v20, 0x12c

    move/from16 v0, v20

    if-eq v14, v0, :cond_7

    const/16 v20, 0x12d

    move/from16 v0, v20

    if-eq v14, v0, :cond_7

    const/16 v20, 0x12e

    move/from16 v0, v20

    if-eq v14, v0, :cond_7

    const/16 v20, 0x12f

    move/from16 v0, v20

    if-eq v14, v0, :cond_7

    const/16 v20, 0x133

    move/from16 v0, v20

    if-eq v14, v0, :cond_7

    .line 272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 278
    :cond_5
    const/16 v20, 0xce

    move/from16 v0, v20

    if-ne v14, v0, :cond_e

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    const-string v21, "Content-Range"

    invoke-virtual/range {v20 .. v21}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "contentRange":Ljava/lang/String;
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 287
    if-eqz v4, :cond_6

    .line 292
    const/16 v20, 0x2f

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 293
    .local v8, "lastSlashPos":I
    if-ltz v8, :cond_6

    .line 294
    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 298
    .local v18, "total":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 309
    .end local v4    # "contentRange":Ljava/lang/String;
    .end local v8    # "lastSlashPos":I
    .end local v18    # "total":Ljava/lang/String;
    :cond_6
    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v20, p1, v20

    if-lez v20, :cond_10

    const/16 v20, 0xce

    move/from16 v0, v20

    if-eq v14, v0, :cond_10

    .line 312
    :try_start_3
    new-instance v20, Ljava/net/ProtocolException;

    invoke-direct/range {v20 .. v20}, Ljava/net/ProtocolException;-><init>()V

    throw v20

    .line 236
    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/16 v20, 0x14

    move/from16 v0, v20

    if-le v13, v0, :cond_8

    .line 237
    new-instance v20, Ljava/net/NoRouteToHostException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Too many redirects: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 240
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "method":Ljava/lang/String;
    const/16 v20, 0x133

    move/from16 v0, v20

    if-ne v14, v0, :cond_9

    const-string v20, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "HEAD"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 246
    new-instance v20, Ljava/net/NoRouteToHostException;

    const-string v21, "Invalid redirect"

    invoke-direct/range {v20 .. v21}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 248
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    const-string v21, "Location"

    invoke-virtual/range {v20 .. v21}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "location":Ljava/lang/String;
    if-nez v9, :cond_a

    .line 250
    new-instance v20, Ljava/net/NoRouteToHostException;

    const-string v21, "Invalid redirect"

    invoke-direct/range {v20 .. v21}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 252
    :cond_a
    new-instance v19, Ljava/net/URL;

    .end local v19    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 253
    .restart local v19    # "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    const-string v21, "https"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    const-string v21, "http"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 255
    new-instance v20, Ljava/net/NoRouteToHostException;

    const-string v21, "Unsupported protocol redirect"

    invoke-direct/range {v20 .. v21}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 257
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 258
    .local v16, "sameProtocol":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-nez v16, :cond_c

    .line 259
    new-instance v20, Ljava/net/NoRouteToHostException;

    const-string v21, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v20 .. v21}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 261
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 262
    .local v15, "sameHost":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    if-nez v15, :cond_d

    .line 263
    new-instance v20, Ljava/net/NoRouteToHostException;

    const-string v21, "Cross-domain redirects are disallowed"

    invoke-direct/range {v20 .. v21}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 266
    :cond_d
    const/16 v20, 0x133

    move/from16 v0, v20

    if-eq v14, v0, :cond_0

    .line 268
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    goto/16 :goto_0

    .line 303
    .end local v9    # "location":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v15    # "sameHost":Z
    .end local v16    # "sameProtocol":Z
    :cond_e
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-eq v14, v0, :cond_f

    .line 304
    new-instance v20, Ljava/io/IOException;

    invoke-direct/range {v20 .. v20}, Ljava/io/IOException;-><init>()V

    throw v20

    .line 306
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    goto/16 :goto_3

    .line 315
    :cond_10
    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 318
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 327
    return-void

    .line 299
    .restart local v4    # "contentRange":Ljava/lang/String;
    .restart local v8    # "lastSlashPos":I
    .restart local v18    # "total":Ljava/lang/String;
    :catch_1
    move-exception v20

    goto/16 :goto_3
.end method

.method private teardownConnection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 151
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 153
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 84
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 85
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 145
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 146
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 147
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    .line 417
    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 400
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 385
    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 387
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    iget-wide v2, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    :goto_0
    return-wide v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAt(JI)I
    .locals 1
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result v0

    return v0
.end method
