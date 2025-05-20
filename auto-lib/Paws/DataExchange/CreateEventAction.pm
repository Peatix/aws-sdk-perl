
package Paws::DataExchange::CreateEventAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::DataExchange::Action', required => 1);
  has Event => (is => 'ro', isa => 'Paws::DataExchange::Event', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/event-actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::CreateEventActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateEventAction - Arguments for method CreateEventAction on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventAction on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method CreateEventAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventAction.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $CreateEventActionResponse = $dataexchange->CreateEventAction(
      Action => {
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
      },
      Event => {
        RevisionPublished => {
          DataSetId => 'MyId',

        },    # OPTIONAL
      },

    );

    # Results:
    my $Action    = $CreateEventActionResponse->Action;
    my $Arn       = $CreateEventActionResponse->Arn;
    my $CreatedAt = $CreateEventActionResponse->CreatedAt;
    my $Event     = $CreateEventActionResponse->Event;
    my $Id        = $CreateEventActionResponse->Id;
    my $UpdatedAt = $CreateEventActionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::CreateEventActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/CreateEventAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => L<Paws::DataExchange::Action>

What occurs after a certain event.



=head2 B<REQUIRED> Event => L<Paws::DataExchange::Event>

What occurs to start an action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventAction in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

