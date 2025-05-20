
package Paws::QConnect::GetQuickResponse;
  use Moose;
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has QuickResponseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'quickResponseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQuickResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::GetQuickResponseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetQuickResponse - Arguments for method GetQuickResponse on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQuickResponse on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method GetQuickResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQuickResponse.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $GetQuickResponseResponse = $wisdom->GetQuickResponse(
      KnowledgeBaseId => 'MyUuidOrArn',
      QuickResponseId => 'MyUuidOrArn',

    );

    # Results:
    my $QuickResponse = $GetQuickResponseResponse->QuickResponse;

    # Returns a L<Paws::QConnect::GetQuickResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetQuickResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should be a QUICK_RESPONSES
type knowledge base.



=head2 B<REQUIRED> QuickResponseId => Str

The identifier of the quick response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQuickResponse in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

