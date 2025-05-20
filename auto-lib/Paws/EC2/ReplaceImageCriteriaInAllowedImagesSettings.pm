
package Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettings;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageCriteria => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImageCriterionRequest]', traits => ['NameInRequest'], request_name => 'ImageCriterion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceImageCriteriaInAllowedImagesSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettings - Arguments for method ReplaceImageCriteriaInAllowedImagesSettings on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceImageCriteriaInAllowedImagesSettings on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReplaceImageCriteriaInAllowedImagesSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceImageCriteriaInAllowedImagesSettings.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ReplaceImageCriteriaInAllowedImagesSettingsResult =
      $ec2->ReplaceImageCriteriaInAllowedImagesSettings(
      DryRun        => 1,    # OPTIONAL
      ImageCriteria => [
        {
          ImageProviders => [ 'MyImageProviderRequest', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ReturnValue =
      $ReplaceImageCriteriaInAllowedImagesSettingsResult->ReturnValue;

# Returns a L<Paws::EC2::ReplaceImageCriteriaInAllowedImagesSettingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReplaceImageCriteriaInAllowedImagesSettings>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ImageCriteria => ArrayRef[L<Paws::EC2::ImageCriterionRequest>]

The list of criteria that are evaluated to determine whether AMIs are
discoverable and usable in the account in the specified Amazon Web
Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceImageCriteriaInAllowedImagesSettings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

