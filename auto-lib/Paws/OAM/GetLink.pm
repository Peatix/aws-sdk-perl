
package Paws::OAM::GetLink;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetLink');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::GetLinkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::GetLink - Arguments for method GetLink on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLink on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method GetLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLink.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $GetLinkOutput = $oam->GetLink(
      Identifier => 'MyResourceIdentifier',

    );

    # Results:
    my $Arn               = $GetLinkOutput->Arn;
    my $Id                = $GetLinkOutput->Id;
    my $Label             = $GetLinkOutput->Label;
    my $LabelTemplate     = $GetLinkOutput->LabelTemplate;
    my $LinkConfiguration = $GetLinkOutput->LinkConfiguration;
    my $ResourceTypes     = $GetLinkOutput->ResourceTypes;
    my $SinkArn           = $GetLinkOutput->SinkArn;
    my $Tags              = $GetLinkOutput->Tags;

    # Returns a L<Paws::OAM::GetLinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/GetLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The ARN of the link to retrieve information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLink in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

