
package Paws::DataExchange::UpdateEventAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::DataExchange::Action');
  has EventActionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventActionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/event-actions/{EventActionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::UpdateEventActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::UpdateEventAction - Arguments for method UpdateEventAction on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventAction on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method UpdateEventAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventAction.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $UpdateEventActionResponse = $dataexchange->UpdateEventAction(
      EventActionId => 'My__string',
      Action        => {
        ExportRevisionToS3 => {
          RevisionDestination => {
            Bucket     => 'My__string',
            KeyPattern => 'My__string',
          },
          Encryption => {
            Type      => 'aws:kms',      # values: aws:kms, AES256
            KmsKeyArn => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Action    = $UpdateEventActionResponse->Action;
    my $Arn       = $UpdateEventActionResponse->Arn;
    my $CreatedAt = $UpdateEventActionResponse->CreatedAt;
    my $Event     = $UpdateEventActionResponse->Event;
    my $Id        = $UpdateEventActionResponse->Id;
    my $UpdatedAt = $UpdateEventActionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::UpdateEventActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/UpdateEventAction>

=head1 ATTRIBUTES


=head2 Action => L<Paws::DataExchange::Action>

What occurs after a certain event.



=head2 B<REQUIRED> EventActionId => Str

The unique identifier for the event action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventAction in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

