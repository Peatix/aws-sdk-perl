package Paws::EC2::NetworkInsightsPath;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has DestinationArn => (is => 'ro', isa => 'Str', request_name => 'destinationArn', traits => ['NameInRequest']);
  has DestinationIp => (is => 'ro', isa => 'Str', request_name => 'destinationIp', traits => ['NameInRequest']);
  has DestinationPort => (is => 'ro', isa => 'Int', request_name => 'destinationPort', traits => ['NameInRequest']);
  has FilterAtDestination => (is => 'ro', isa => 'Paws::EC2::PathFilter', request_name => 'filterAtDestination', traits => ['NameInRequest']);
  has FilterAtSource => (is => 'ro', isa => 'Paws::EC2::PathFilter', request_name => 'filterAtSource', traits => ['NameInRequest']);
  has NetworkInsightsPathArn => (is => 'ro', isa => 'Str', request_name => 'networkInsightsPathArn', traits => ['NameInRequest']);
  has NetworkInsightsPathId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsPathId', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest']);
  has SourceArn => (is => 'ro', isa => 'Str', request_name => 'sourceArn', traits => ['NameInRequest']);
  has SourceIp => (is => 'ro', isa => 'Str', request_name => 'sourceIp', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInsightsPath

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInsightsPath object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInsightsPath object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The time stamp when the path was created.


=head2 Destination => Str

The ID of the destination.


=head2 DestinationArn => Str

The Amazon Resource Name (ARN) of the destination.


=head2 DestinationIp => Str

The IP address of the destination.


=head2 DestinationPort => Int

The destination port.


=head2 FilterAtDestination => L<Paws::EC2::PathFilter>

Scopes the analysis to network paths that match specific filters at the
destination.


=head2 FilterAtSource => L<Paws::EC2::PathFilter>

Scopes the analysis to network paths that match specific filters at the
source.


=head2 NetworkInsightsPathArn => Str

The Amazon Resource Name (ARN) of the path.


=head2 NetworkInsightsPathId => Str

The ID of the path.


=head2 Protocol => Str

The protocol.


=head2 Source => Str

The ID of the source.


=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the source.


=head2 SourceIp => Str

The IP address of the source.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags associated with the path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
