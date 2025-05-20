
package Paws::FSX::DescribeDataRepositoryAssociations;
  use Moose;
  has AssociationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataRepositoryAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeDataRepositoryAssociationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeDataRepositoryAssociations - Arguments for method DescribeDataRepositoryAssociations on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataRepositoryAssociations on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeDataRepositoryAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataRepositoryAssociations.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeDataRepositoryAssociationsResponse =
      $fsx->DescribeDataRepositoryAssociations(
      AssociationIds => [
        'MyDataRepositoryAssociationId', ...    # min: 13, max: 23
      ],    # OPTIONAL
      Filters => [
        {
          Name => 'file-system-id'
          , # values: file-system-id, backup-type, file-system-type, volume-id, data-repository-type, file-cache-id, file-cache-type; OPTIONAL
          Values => [
            'MyFilterValue', ...    # min: 1, max: 128
          ],    # max: 20; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $Associations =
      $DescribeDataRepositoryAssociationsResponse->Associations;
    my $NextToken = $DescribeDataRepositoryAssociationsResponse->NextToken;

    # Returns a L<Paws::FSX::DescribeDataRepositoryAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeDataRepositoryAssociations>

=head1 ATTRIBUTES


=head2 AssociationIds => ArrayRef[Str|Undef]

IDs of the data repository associations whose descriptions you want to
retrieve (String).



=head2 Filters => ArrayRef[L<Paws::FSX::Filter>]





=head2 MaxResults => Int

The maximum number of resources to return in the response. This value
must be an integer greater than zero.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataRepositoryAssociations in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

