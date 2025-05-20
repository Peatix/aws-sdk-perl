
package Paws::CloudFront::CreateConnectionGroup;
  use Moose;
  has AnycastIpListId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Ipv6Enabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/connection-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateConnectionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateConnectionGroupRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateConnectionGroup - Arguments for method CreateConnectionGroup on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectionGroup2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateConnectionGroup2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectionGroup2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateConnectionGroupResult = $cloudfront->CreateConnectionGroup(
      Name            => 'Mystring',
      AnycastIpListId => 'Mystring',    # OPTIONAL
      Enabled         => 1,             # OPTIONAL
      Ipv6Enabled     => 1,             # OPTIONAL
      Tags            => {
        Items => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ConnectionGroup = $CreateConnectionGroupResult->ConnectionGroup;
    my $ETag            = $CreateConnectionGroupResult->ETag;

    # Returns a L<Paws::CloudFront::CreateConnectionGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateConnectionGroup>

=head1 ATTRIBUTES


=head2 AnycastIpListId => Str

The ID of the Anycast static IP list.



=head2 Enabled => Bool

Enable the connection group.



=head2 Ipv6Enabled => Bool

Enable IPv6 for the connection group. The default is C<true>. For more
information, see Enable IPv6
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6)
in the I<Amazon CloudFront Developer Guide>.



=head2 B<REQUIRED> Name => Str

The name of the connection group. Enter a friendly identifier that is
unique within your Amazon Web Services account. This name can't be
updated after you create the connection group.



=head2 Tags => L<Paws::CloudFront::Tags>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectionGroup2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

