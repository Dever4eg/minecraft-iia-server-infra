# Setup

```
aws s3 ls s3://minecrft-backups
```

Get the last devnull backup

```
aws s3 cp s3://minecrft-backups/<backup-file.tar.gz> devnull.tar.gz
```

```
aws s3 cp s3://minecrft-backups/dynmap.tar.gz dynmap.tar.gz 
```

```
tar -xzf devnull.tar.gz 
tar -xzf dynmap.tar.gz 
```