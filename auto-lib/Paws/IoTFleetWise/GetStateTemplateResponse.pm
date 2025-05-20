
package Paws::IoTFleetWise::GetStateTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' );
  has DataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dataExtraDimensions' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' );
  has MetadataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'metadataExtraDimensions' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' );
  has StateTemplateProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stateTemplateProperties' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetStateTemplateResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the state template.


=head2 CreationTime => Str

The time the state template was created in seconds since epoch (January
1, 1970 at midnight UTC time).


=head2 DataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes associated with the payload published on
the state template's MQTT topic.

Default: An empty array


=head2 Description => Str

A brief description of the state template.


=head2 Id => Str

The unique ID of the state template.


=head2 LastModificationTime => Str

The time the state template was last updated in seconds since epoch
(January 1, 1970 at midnight UTC time).


=head2 MetadataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes to associate with user properties of the
messages published on the state template's MQTT topic.

Default: An empty array


=head2 Name => Str

The name of the state template.


=head2 SignalCatalogArn => Str

The ARN of the signal catalog associated with the state template.


=head2 StateTemplateProperties => ArrayRef[Str|Undef]

A list of signals from which data is collected. The state template
properties contain the fully qualified names of the signals.


=head2 _request_id => Str


=cut

1;