
package Paws::IoT::ListManagedJobTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'templateName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedJobTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-job-templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListManagedJobTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListManagedJobTemplates - Arguments for method ListManagedJobTemplates on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedJobTemplates on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListManagedJobTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedJobTemplates.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListManagedJobTemplatesResponse = $iot->ListManagedJobTemplates(
      MaxResults   => 1,                             # OPTIONAL
      NextToken    => 'MyNextToken',                 # OPTIONAL
      TemplateName => 'MyManagedJobTemplateName',    # OPTIONAL
    );

    # Results:
    my $ManagedJobTemplates =
      $ListManagedJobTemplatesResponse->ManagedJobTemplates;
    my $NextToken = $ListManagedJobTemplatesResponse->NextToken;

    # Returns a L<Paws::IoT::ListManagedJobTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListManagedJobTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of entries that can be returned.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 TemplateName => Str

An optional parameter for template name. If specified, only the
versions of the managed job templates that have the specified template
name will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedJobTemplates in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

