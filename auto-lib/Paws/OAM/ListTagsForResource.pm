
package Paws::OAM::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{ResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::ListTagsForResourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $ListTagsForResourceOutput = $oam->ListTagsForResource(
      ResourceArn => 'MyArn',

    );

    # Results:
    my $Tags = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::OAM::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource that you want to view tags for.

The ARN format of a sink is
C<arn:aws:oam:I<Region>:I<account-id>:sink/I<sink-id>>

The ARN format of a link is
C<arn:aws:oam:I<Region>:I<account-id>:link/I<link-id>>

For more information about ARN format, see CloudWatch Logs resources
and operations
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html).

Unlike tagging permissions in other Amazon Web Services services, to
retrieve the list of tags for links or sinks you must have the
C<oam:RequestTag> permission. The C<aws:ReguestTag> permission does not
allow you to tag and untag links and sinks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

