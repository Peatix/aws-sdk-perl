
package Paws::Comprehend::ListFlywheels;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Comprehend::FlywheelFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFlywheels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ListFlywheelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListFlywheels - Arguments for method ListFlywheels on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFlywheels on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListFlywheels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFlywheels.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListFlywheelsResponse = $comprehend->ListFlywheels(
      Filter => {
        CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Status             => 'CREATING'
        ,    # values: CREATING, ACTIVE, UPDATING, DELETING, FAILED; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $FlywheelSummaryList = $ListFlywheelsResponse->FlywheelSummaryList;
    my $NextToken           = $ListFlywheelsResponse->NextToken;

    # Returns a L<Paws::Comprehend::ListFlywheelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListFlywheels>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Comprehend::FlywheelFilter>

Filters the flywheels that are returned. You can filter flywheels on
their status, or the date and time that they were submitted. You can
only set one filter at a time.



=head2 MaxResults => Int

Maximum number of results to return in a response. The default is 100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFlywheels in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

