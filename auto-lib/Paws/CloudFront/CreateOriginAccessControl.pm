
package Paws::CloudFront::CreateOriginAccessControl;
  use Moose;
  has OriginAccessControlConfig => (is => 'ro', isa => 'Paws::CloudFront::OriginAccessControlConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOriginAccessControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/origin-access-control');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateOriginAccessControlResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateOriginAccessControl - Arguments for method CreateOriginAccessControl on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOriginAccessControl2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateOriginAccessControl2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOriginAccessControl2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateOriginAccessControlResult =
      $cloudfront->CreateOriginAccessControl(
      OriginAccessControlConfig => {
        Name                          => 'Mystring',
        OriginAccessControlOriginType =>
          's3',    # values: s3, mediastore, mediapackagev2, lambda
        SigningBehavior => 'never',      # values: never, always, no-override
        SigningProtocol => 'sigv4',      # values: sigv4
        Description     => 'Mystring',
      },

      );

    # Results:
    my $ETag     = $CreateOriginAccessControlResult->ETag;
    my $Location = $CreateOriginAccessControlResult->Location;
    my $OriginAccessControl =
      $CreateOriginAccessControlResult->OriginAccessControl;

    # Returns a L<Paws::CloudFront::CreateOriginAccessControlResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateOriginAccessControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OriginAccessControlConfig => L<Paws::CloudFront::OriginAccessControlConfig>

Contains the origin access control.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOriginAccessControl2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

