
package Paws::IVS::StartViewerSessionRevocation;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelArn', required => 1);
  has ViewerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'viewerId', required => 1);
  has ViewerSessionVersionsLessThanOrEqualTo => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'viewerSessionVersionsLessThanOrEqualTo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartViewerSessionRevocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartViewerSessionRevocation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::StartViewerSessionRevocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::StartViewerSessionRevocation - Arguments for method StartViewerSessionRevocation on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartViewerSessionRevocation on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method StartViewerSessionRevocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartViewerSessionRevocation.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $StartViewerSessionRevocationResponse =
      $ivs->StartViewerSessionRevocation(
      ChannelArn                             => 'MyChannelArn',
      ViewerId                               => 'MyViewerId',
      ViewerSessionVersionsLessThanOrEqualTo => 1,                # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/StartViewerSessionRevocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel associated with the viewer session to revoke.



=head2 B<REQUIRED> ViewerId => Str

The ID of the viewer associated with the viewer session to revoke. Do
not use this field for personally identifying, confidential, or
sensitive information.



=head2 ViewerSessionVersionsLessThanOrEqualTo => Int

An optional filter on which versions of the viewer session to revoke.
All versions less than or equal to the specified version will be
revoked. Default: 0.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartViewerSessionRevocation in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

