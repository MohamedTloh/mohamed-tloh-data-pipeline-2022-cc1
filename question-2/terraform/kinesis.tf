resource "aws_kinesis_stream" "test_stream" {
  name             = "mohamed-tloh-stock-input-stream"
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  tags = {
    Environment = "test"
    Etudiant = "mohamed.tloh@etu.u-pec.fr"
  }
}