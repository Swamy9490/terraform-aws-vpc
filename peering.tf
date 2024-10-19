resource "aws_vpc_peering_connection" "foo" {
    count = vpc.is_peering_required ? 1 : 0
    vpc_id = aws_vpc_main.id
    peer.vpc_id = var.acceptor_vpc_id == "" ? data.aws_vpc.default.id
}