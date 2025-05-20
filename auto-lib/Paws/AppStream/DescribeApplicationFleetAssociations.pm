
package Paws::AppStream::DescribeApplicationFleetAssociations;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationFleetAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeApplicationFleetAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeApplicationFleetAssociations - Arguments for method DescribeApplicationFleetAssociations on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationFleetAssociations on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeApplicationFleetAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationFleetAssociations.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeApplicationFleetAssociationsResult =
      $appstream2->DescribeApplicationFleetAssociations(
      ApplicationArn => 'MyArn',       # OPTIONAL
      FleetName      => 'MyName',      # OPTIONAL
      MaxResults     => 1,             # OPTIONAL
      NextToken      => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ApplicationFleetAssociations =
      $DescribeApplicationFleetAssociationsResult->ApplicationFleetAssociations;
    my $NextToken = $DescribeApplicationFleetAssociationsResult->NextToken;

# Returns a L<Paws::AppStream::DescribeApplicationFleetAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeApplicationFleetAssociations>

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The ARN of the application.



=head2 FleetName => Str

The name of the fleet.



=head2 MaxResults => Int

The maximum size of each page of results.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationFleetAssociations in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

