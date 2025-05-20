
package Paws::DynamoDB::DescribeImportOutput;
  use Moose;
  has ImportTableDescription => (is => 'ro', isa => 'Paws::DynamoDB::ImportTableDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeImportOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportTableDescription => L<Paws::DynamoDB::ImportTableDescription>

Represents the properties of the table created for the import, and
parameters of the import. The import parameters include import status,
how many items were processed, and how many errors were encountered.


=head2 _request_id => Str


=cut

1;